<?php echo $text_title_order_type; ?>
<?php if (isset($terminals) && !empty($terminals))  {?>




<script>


    function loadjscssfile(filename, filetype,id){
        if (filetype=="js"){
            var fileref=document.createElement('script')
            fileref.setAttribute("type","text/javascript")
            fileref.setAttribute("src", filename)
        }
        else if (filetype=="css"){ //if filename is an external CSS file
            var fileref=document.createElement("link")
            fileref.setAttribute("rel", "stylesheet")
            fileref.setAttribute("type", "text/css")
            fileref.setAttribute("href", filename)

        }
        if (typeof id !== 'undefined'){
            fileref.setAttribute("id",id)
        }
        let el = document.querySelector("#"+id);
        if (el){
            document.querySelector("#"+id).remove();
        }
        if (typeof fileref!="undefined") {
            document.getElementsByTagName("head")[0].appendChild(fileref);
        }
    }

    loadjscssfile("catalog/view/stylesheet/qwqer/autocomplete.min.css", "css","accss");
    loadjscssfile("catalog/view/javascript/qwqer/autocomplete.min.js", "js","acjs");

    document.querySelector("#acjs").addEventListener("load",()=>{
        if (typeof parentDiv === 'undefined'){
            var parentDiv = document.querySelector("input[value=\"qwqer\\.omnivaparcelterminal\"]").parentElement;
            if (document.querySelector("#autoComplete")===null){
                parentDiv.innerHTML += '<br/><input name="autoComplete" data-onchange="reloadAll" id="autoComplete" type="search" dir="ltr" spellcheck=false autocorrect="off" autocomplete="off" value="<?php echo $autocomplete; ?>" autocapitalize="off">';
                parentDiv.innerHTML += '<input id="autoCompleteHidden" data-onchange="reloadAll" type="hidden" name="autoCompleteHidden" value="<?php echo $autocompletehidden; ?>">';
            }

            var terminalRadioButton = document.querySelector("input[value=\"qwqer\\.omnivaparcelterminal\"]");
            let autocomplete2 = document.querySelector("#autoComplete")

            if (terminalRadioButton.checked){
                autocomplete2.style.visibility = "visible";
            }else{
                autocomplete2.style.visibility = "hidden";
            }

            document.querySelectorAll("input[type=\"radio\"]").forEach((e)=>{
                e.addEventListener('change',(e)=>{
                   //console.log('onChange');
                    let autocomplete2 = document.querySelector("#autoComplete")
                    if (autocomplete2){
                        if (terminalRadioButton.checked){
                            autocomplete2.style.visibility = "visible";
                        }else{
                            autocomplete2.style.visibility = "hidden";
                        }
                    }
                    if (typeof reloadAll === 'function' ){
                        reloadAll();
                    }
                });
            });






        }
    })


    document.querySelector("#acjs").addEventListener("load",()=>{



        const autoCompleteJS = new autoComplete({
            selector: "#autoComplete",
            placeHolder: "<?php echo $text_select_box; ?>",
            searchEngine: "loose",
            data: {
                src: <?php echo json_encode($terminals); ?>,
        keys:['name','id'],
            cache: true,
            filter: (list) => {
            // Filter duplicates
            // incase of multiple data keys usage
            return Array.from(
                new Set(list.map((value) => value.match))
            ).map((food) => {
                return list.find((value) => value.match === food);
            });
        }
    },
        resultsList: {
            element: (list, data) => {
                const info = document.createElement("p");
                if (data.results.length > 0) {
                    info.innerHTML = `Displaying <strong>${data.results.length}</strong> out of <strong>${data.matches.length}</strong> results`;
                } else {
                    info.innerHTML = `Found <strong>${data.matches.length}</strong> matching results for <strong>"${data.query}"</strong>`;
                }
                list.prepend(info);
            },
                noResults: true,
                maxResults: 15,
                tabSelect: true
        },
        resultItem: {
            element: (item, data) => {
                // Modify Results Item Style
                item.style = "display: flex; justify-content: space-between;";
                // Modify Results Item Content
                item.innerHTML = `
              <span style="text-overflow: ellipsis; white-space: nowrap; overflow: hidden;">
                ${data.match}
              </span>
              <span style="display: flex; align-items: center; font-size: 13px; font-weight: 100; text-transform: uppercase; color: rgba(0,0,0,.2);">
                ${data.key}
              </span>`;
            },
                highlight: true,
                selected: "autoComplete_selected"
        },
        events: {
            input: {
                selection: (event) => {
                    const selection = event.detail.selection.value;
                    autoCompleteJS.input.value = selection.name;
                    document.querySelector("#autoCompleteHidden").value = JSON.stringify(event.detail.selection.value);
                    save_parcel_terminal(document.querySelector("#autoCompleteHidden").value);
                    if (typeof reloadAll === 'function' ){
                        reloadAll();
                    }

                }
            }
        }
    });
    })

    var autocomplete = document.querySelector("#autoComplete")
    if (autocomplete){

        autocomplete.addEventListener("selection", function (event) {
            //event on success selection
            document.querySelector("#autoCompleteHidden").value = JSON.stringify(event.detail.selection.value);

        });
    }

    if (typeof save_parcel_terminal !== 'function'){
        function save_parcel_terminal(data) {
            data = {'parcel_terminal':data}
            fetch('index.php?route=shipping/qwqer/save_parcel_terminal',{
                body: new URLSearchParams(data),
                method: 'POST',
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8',
                    //'Content-Type': 'text/plain;charset=utf-8',
                    //"Content-Type": "application/json",
                },
            }).then((res)=>{return res.json()}).then((r)=>//console.log(r)})
        }
    }


</script>
<?php } ?>