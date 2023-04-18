<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">


    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="keywords" content="Java, JSP, Apache Tomcat, ECMAScript">
        <meta name="description" content="Web stuff tryout. Sudoku web app.">
        <meta name="author_name" content="Dodo - Jozef Javorsky">
        <meta name="author_email" content="jozef.javorsky.strom44zem88@gmail.com">
        <meta name="author_GitHub" content="github.com/jozefjavorskyDodo">
        <link rel="icon" type="image/x-icon" sizes="16x16" id="html-head-link-favicon">
        <title>Sudoku Web App</title>
        <style>
            * {
                user-select: none !important;
                font-family: cursive;
                font-size: 4mm;
                font-weight: 900 !important;
            }

            #solve-bttn {
                visibility: hidden;
            }
        </style>
    </head>


    <body id="html-body">


        <script>
            String("use strict");
            try {
                let fvcn = document.getElementById("html-head-link-favicon");
                let webapp_body = document.querySelector("#html-body");
                fvcn.setAttribute("href",
                    "data:image/x-icon;" +
                    "base64," +
                    "iVBORw0KGgoAAAANSUhEUgAAA" +
                    "BAAAAAQCAIAAACQkWg2AAAAAX" +
                    "NSR0IArs4c6QAAAARnQU1BAAC" +
                    "xjwv8YQUAAAAJcEhZcwAADsMA" +
                    "AA7DAcdvqGQAAABNSURBVDhPn" +
                    "cyxDcAwDANBze25PUDCfMeCRP" +
                    "SVDxQ8m8499+t9VCrAUKnyhVE" +
                    "BhspV+UujAgyVKl8YFWCoXJW/" +
                    "NCrAUKnyhVEBhsqfzTyK01cwy" +
                    "Nll7AAAAABJRU5ErkJggg=="
                );
                webapp_body.style.backgroundColor = String("rgb(122, 122, 122)");
            } catch (err) {
                if (err) {
                    console.clear();
                    alert("bug");
                    console.log(err);
                };
            };
        </script>


        <div id="UI-state-view-header">
            <h1>
                <span id="header-heading-span">SUDOKU WEB APP</span>
            </h1>
        </div>


        <div id="UI-state-view-main">
            <table id="sudoku-grid-container">
                <tbody>
                    <tr>
                        <td class="sub00 y0 x0">0</td>
                        <td class="sub00 y0 x1">0</td>
                        <td class="sub00 y0 x2">0</td>
                        <td class="sub01 y0 x3">0</td>
                        <td class="sub01 y0 x4">0</td>
                        <td class="sub01 y0 x5">0</td>
                        <td class="sub02 y0 x6">0</td>
                        <td class="sub02 y0 x7">0</td>
                        <td class="sub02 y0 x8">0</td>
                    </tr>
                    <tr>
                        <td class="sub00 y1 x0">0</td>
                        <td class="sub00 y1 x1">0</td>
                        <td class="sub00 y1 x2">0</td>
                        <td class="sub01 y1 x3">0</td>
                        <td class="sub01 y1 x4">0</td>
                        <td class="sub01 y1 x5">0</td>
                        <td class="sub02 y1 x6">0</td>
                        <td class="sub02 y1 x7">0</td>
                        <td class="sub02 y1 x8">0</td>
                    </tr>
                    <tr>
                        <td class="sub00 y2 x0">0</td>
                        <td class="sub00 y2 x1">0</td>
                        <td class="sub00 y2 x2">0</td>
                        <td class="sub01 y2 x3">0</td>
                        <td class="sub01 y2 x4">0</td>
                        <td class="sub01 y2 x5">0</td>
                        <td class="sub02 y2 x6">0</td>
                        <td class="sub02 y2 x7">0</td>
                        <td class="sub02 y2 x8">0</td>
                    </tr>
                    <tr>
                        <td class="sub10 y3 x0">0</td>
                        <td class="sub10 y3 x1">0</td>
                        <td class="sub10 y3 x2">0</td>
                        <td class="sub11 y3 x3">0</td>
                        <td class="sub11 y3 x4">0</td>
                        <td class="sub11 y3 x5">0</td>
                        <td class="sub12 y3 x6">0</td>
                        <td class="sub12 y3 x7">0</td>
                        <td class="sub12 y3 x8">0</td>
                    </tr>
                    <tr>
                        <td class="sub10 y4 x0">0</td>
                        <td class="sub10 y4 x1">0</td>
                        <td class="sub10 y4 x2">0</td>
                        <td class="sub11 y4 x3">0</td>
                        <td class="sub11 y4 x4">0</td>
                        <td class="sub11 y4 x5">0</td>
                        <td class="sub12 y4 x6">0</td>
                        <td class="sub12 y4 x7">0</td>
                        <td class="sub12 y4 x8">0</td>
                    </tr>
                    <tr>
                        <td class="sub10 y5 x0">0</td>
                        <td class="sub10 y5 x1">0</td>
                        <td class="sub10 y5 x2">0</td>
                        <td class="sub11 y5 x3">0</td>
                        <td class="sub11 y5 x4">0</td>
                        <td class="sub11 y5 x5">0</td>
                        <td class="sub12 y5 x6">0</td>
                        <td class="sub12 y5 x7">0</td>
                        <td class="sub12 y5 x8">0</td>
                    </tr>
                    <tr>
                        <td class="sub20 y6 x0">0</td>
                        <td class="sub20 y6 x1">0</td>
                        <td class="sub20 y6 x2">0</td>
                        <td class="sub21 y6 x3">0</td>
                        <td class="sub21 y6 x4">0</td>
                        <td class="sub21 y6 x5">0</td>
                        <td class="sub22 y6 x6">0</td>
                        <td class="sub22 y6 x7">0</td>
                        <td class="sub22 y6 x8">0</td>
                    </tr>
                    <tr>
                        <td class="sub20 y7 x0">0</td>
                        <td class="sub20 y7 x1">0</td>
                        <td class="sub20 y7 x2">0</td>
                        <td class="sub21 y7 x3">0</td>
                        <td class="sub21 y7 x4">0</td>
                        <td class="sub21 y7 x5">0</td>
                        <td class="sub22 y7 x6">0</td>
                        <td class="sub22 y7 x7">0</td>
                        <td class="sub22 y7 x8">0</td>
                    </tr>
                    <tr>
                        <td class="sub20 y8 x0">0</td>
                        <td class="sub20 y8 x1">0</td>
                        <td class="sub20 y8 x2">0</td>
                        <td class="sub21 y8 x3">0</td>
                        <td class="sub21 y8 x4">0</td>
                        <td class="sub21 y8 x5">0</td>
                        <td class="sub22 y8 x6">0</td>
                        <td class="sub22 y8 x7">0</td>
                        <td class="sub22 y8 x8">0</td>
                    </tr>
                </tbody>
            </table>
            <br>
            <button class="firstRowBttn bttns" id="sub-cubes-bttn">
                <span>Sub-cubes</span>
            </button>
            <button class="firstRowBttn bttns" id="rows-bttn">
                <span>Rows</span>
            </button>
            <button class="firstRowBttn bttns" id="cols-bttn">
                <span>Columns</span>
            </button>
            <button class="firstRowBttn bttns" id="null-coloring-bttn">
                <span>Null coloring</span>
            </button>
            <br>
            <br>
            <button class="secondRowBttn bttns" id="generate-bttn">
                <span>Generate</span>
            </button>
            <button class="secondRowBttn bttns" id="solve-bttn">
                <span>Solve</span>
            </button>
            <br>
            <br>
        </div>


        <div id="UI-state-view-footer">
            <hr>
            <p style="color:rgb(30, 30, 30) !important;">
                <span>&nbsp;&nbsp;&nbsp;github.com/jozefjavorskyDodo</span>
            </p>
            <p style="color:rgb(30, 30, 30) !important;">
                <span>&nbsp;&nbsp;&nbsp;jozef.javorsky.strom44zem88@gmail.com</span>
            </p>
        </div>


        <script>
            String("use strict");
            try {
                let _sudoku_ = document.querySelector("#sudoku-grid-container");
                [...document.querySelectorAll("td")].forEach((cubicle) => {
                    cubicle.style.border = String("1mm solid rgb(0, 0, 0)");
                    cubicle.style.padding = String("0 2mm 0 2mm");
                    cubicle.style.borderRadius = String("1mm");
                    cubicle.style.color = String("rgb(122, 122, 122)");
                });
                [...document.querySelectorAll(".firstRowBttn")].forEach((bttn) => {
                    bttn.style.margin = String("0 0 0 1cm");
                });
                [...document.querySelectorAll(".secondRowBttn")].forEach((bttn) => {
                    bttn.style.margin = String("0 0 0 32mm");
                });
                [...document.querySelectorAll(".bttns")].forEach((b) => {
                    b.style.border = String("0");
                    b.style.borderRadius = String("1mm");
                    b.style.padding = String("0 2mm 1mm 2mm");
                    b.style.backgroundColor = String("rgb(0, 0, 0)");
                    b.style.color = String("rgb(244, 244, 244)");
                    b.addEventListener("mouseenter", () => {
                        b.style.cursor = String("pointer");
                        b.style.color = String("rgb(0, 0, 0)");
                        b.style.backgroundColor = String("rgb(244, 244, 244)");
                    });
                    b.addEventListener("mouseleave", () => {
                        b.style.color = String("rgb(244, 244, 244)");
                        b.style.backgroundColor = String("rgb(0, 0, 0)");
                    });
                });
                _sudoku_.style.margin = String("6mm 0 0 3cm");
                _sudoku_.style.boxShadow = String("0 0 10cm 3cm rgb(122, 244, 122)");
                _sudoku_.style.borderRadius = String("1mm");
                document.querySelector("#sub-cubes-bttn").addEventListener(
                    "click",
                    () => {
                        [...document.querySelectorAll(".sub00"),
                        ...document.querySelectorAll(".sub11"),
                        ...document.querySelectorAll(".sub22")].forEach(
                            (cubicle) => {
                                cubicle.style.borderColor = String("rgb(244, 0 , 0)");
                            });
                        [...document.querySelectorAll(".sub01"),
                        ...document.querySelectorAll(".sub12"),
                        ...document.querySelectorAll(".sub20")].forEach(
                            (cubicle) => {
                                cubicle.style.borderColor = String("rgb(0, 244 , 0)");
                            });
                        [...document.querySelectorAll(".sub02"),
                        ...document.querySelectorAll(".sub10"),
                        ...document.querySelectorAll(".sub21")].forEach(
                            (cubicle) => {
                                cubicle.style.borderColor = String("rgb(0, 0 , 244)");
                            });
                    });
                document.querySelector("#rows-bttn").addEventListener("click",
                    () => {
                        [...document.querySelectorAll(".y0"),
                        ...document.querySelectorAll(".y3"),
                        ...document.querySelectorAll(".y6")].forEach((cubicle) => {
                            cubicle.style.borderColor = String("rgb(244, 0 , 0)");
                        });
                        [...document.querySelectorAll(".y1"),
                        ...document.querySelectorAll(".y4"),
                        ...document.querySelectorAll(".y7")].forEach((cubicle) => {
                            cubicle.style.borderColor = String("rgb(0, 244 , 0)");
                        });
                        [...document.querySelectorAll(".y2"),
                        ...document.querySelectorAll(".y5"),
                        ...document.querySelectorAll(".y8")].forEach((cubicle) => {
                            cubicle.style.borderColor = String("rgb(0, 0 , 244)");
                        });
                    });
                document.querySelector("#cols-bttn").addEventListener("click",
                    () => {
                        [...document.querySelectorAll(".x0"),
                        ...document.querySelectorAll(".x3"),
                        ...document.querySelectorAll(".x6")].forEach((cubicle) => {
                            cubicle.style.borderColor = String("rgb(244, 0 , 0)");
                        });
                        [...document.querySelectorAll(".x1"),
                        ...document.querySelectorAll(".x4"),
                        ...document.querySelectorAll(".x7")].forEach((cubicle) => {
                            cubicle.style.borderColor = String("rgb(0, 244 , 0)");
                        });
                        [...document.querySelectorAll(".x2"),
                        ...document.querySelectorAll(".x5"),
                        ...document.querySelectorAll(".x8")].forEach((cubicle) => {
                            cubicle.style.borderColor = String("rgb(0, 0 , 244)");
                        });
                    });
                document.querySelector("#null-coloring-bttn").addEventListener(
                    "click",
                    () => {
                        [...document.querySelectorAll("td")].forEach((cubicle) => {
                            cubicle.style.borderColor = String("rgb(0, 0, 0)");
                        });
                    });
                document.querySelector("#generate-bttn").addEventListener(
                    "click",
                    () => {
                        i_fTxyz_tF_o();
                    });


                let i_fTxyz_tF_o = () => {
                    let ____0r = [];
                    let __cs = document.querySelectorAll(String("td"));
                    [...document.querySelectorAll("td")].forEach((cubicle) => {
                        cubicle.style.color = String("rgb(122, 122, 122)");
                        cubicle.innerHTML = String("0");
                    });
                    while (Number(____0r.length) < Number(9)) {
                        let ___innt = Number(Math.floor(Math.random() * 9) + 1);
                        if (
                            Boolean(____0r.includes(___innt))
                            ===
                            Boolean(false)
                        ) {
                            ____0r.push(Number(___innt));
                        };
                    };
                    for (let i = Number(0); i <= Number(8); i++) {
                        __cs[i].innerHTML = String(____0r[i]);
                    };
                    for (let i = Number(0); i <= Number(8); i++) {
                        __cs[i + Number(12)].innerHTML = String(____0r[i]);
                    };
                    __cs[Number(9)].innerHTML = String(____0r[Number(6)]);
                    __cs[Number(10)].innerHTML = String(____0r[Number(7)]);
                    __cs[Number(11)].innerHTML = String(____0r[Number(8)]);
                    __cs[Number(21)].innerHTML = String(____0r[Number(6)]);
                    __cs[Number(22)].innerHTML = String(____0r[Number(7)]);
                    __cs[Number(23)].innerHTML = String(____0r[Number(8)]);
                    __cs[Number(18)].innerHTML = String(____0r[Number(3)]);
                    __cs[Number(19)].innerHTML = String(____0r[Number(4)]);
                    __cs[Number(20)].innerHTML = String(____0r[Number(5)]);
                    __cs[Number(24)].innerHTML = String(____0r[Number(0)]);
                    __cs[Number(25)].innerHTML = String(____0r[Number(1)]);
                    __cs[Number(26)].innerHTML = String(____0r[Number(2)]);
                    fTxyz_tF();
                };


                let fTxyz_tF = () => {
                    let null_flag = Boolean(false);
                    let pseudo_random_indexes = [];
                    let ___cs___ = document.querySelectorAll(String("td"));
                    for (let _repe_ = Number(1); _repe_ <= Number(10); _repe_++) {
                        for (
                            let yindx_iter = Number(27);
                            yindx_iter <= Number(80);
                            yindx_iter++
                        ) {
                            let sub___vals = [];
                            let y_____vals = [];
                            let x_____vals = [];
                            let its____sub = document.querySelectorAll(
                                String(".") +
                                ___cs___[
                                    yindx_iter
                                ].getAttribute("class").split(' ')[0]
                            );
                            let its______y = document.querySelectorAll(
                                String(".") +
                                ___cs___[
                                    yindx_iter
                                ].getAttribute("class").split(' ')[1]
                            );
                            let its______x = document.querySelectorAll(
                                String(".") +
                                ___cs___[
                                    yindx_iter
                                ].getAttribute("class").split(' ')[2]
                            );
                            for (
                                let anot_indx_iter = Number(0);
                                anot_indx_iter <= Number(8);
                                anot_indx_iter++
                            ) {
                                sub___vals.push(Number(
                                    String(its____sub[anot_indx_iter].innerHTML)
                                ));
                                y_____vals.push(Number(
                                    String(its______y[anot_indx_iter].innerHTML)
                                ));
                                x_____vals.push(Number(
                                    String(its______x[anot_indx_iter].innerHTML)
                                ));
                            };
                            for (
                                let prob_new_int_val = Number(1);
                                prob_new_int_val <= Number(9);
                                prob_new_int_val++
                            ) {
                                if (
                                    (
                                        Boolean(sub___vals.includes(prob_new_int_val))
                                        ===
                                        Boolean(false)
                                    )
                                    &&
                                    (
                                        Boolean(y_____vals.includes(prob_new_int_val))
                                        ===
                                        Boolean(false)
                                    )
                                    &&
                                    (
                                        Boolean(x_____vals.includes(prob_new_int_val))
                                        ===
                                        Boolean(false)
                                    )
                                ) ___cs___[
                                    Number(yindx_iter)
                                ].innerHTML = String(Number(prob_new_int_val));
                            };
                            if (
                                String(___cs___[yindx_iter].innerHTML)
                                ===
                                String("0")
                            ) break;
                        };
                    };
                    for (
                        let anot_anot_yindx_iter = Number(0);
                        anot_anot_yindx_iter <= Number(80);
                        anot_anot_yindx_iter++
                    ) {
                        if (
                            String(___cs___[anot_anot_yindx_iter].innerHTML)
                            ===
                            String("0")
                        ) {
                            null_flag = Boolean(true);
                        };
                    };
                    if (
                        Boolean(null_flag)
                        ===
                        Boolean(true)
                    ) {
                        i_fTxyz_tF_o();
                    } else {
                        [...___cs___].forEach((c) => c.style.color = "rgb(0, 0, 0)");
                        while (
                            Number(pseudo_random_indexes.length)
                            <
                            Number(40)
                        ) {
                            let prob_new_yindx = Number(
                                Math.floor(Math.random() * Number(81))
                            );
                            if (
                                Boolean(pseudo_random_indexes.includes(prob_new_yindx))
                                ===
                                Boolean(false)
                            ) pseudo_random_indexes.push(prob_new_yindx);
                        };
                        document.querySelector(
                            String("#generate-bttn")
                        ).style.visibility = String("hidden");
                        document.querySelector(
                            String("#solve-bttn")
                        ).style.visibility = String("visible");
                        pseudo_random_indexes.forEach((indx_val) => {
                            ___cs___[indx_val].style.color = "rgb(122, 122, 122)";
                        });
                    };
                };


                document.querySelector("#solve-bttn").addEventListener(
                    "click",
                    () => {
                        let ___vals___ = document.querySelectorAll(String("td"));
                        [...___vals___].forEach((__v__) => {
                            __v__.style.color = String("rgb(0, 0, 0)");
                        });
                        document.querySelector(
                            String("#generate-bttn")
                        ).style.visibility = String("visible");
                        document.querySelector(
                            String("#solve-bttn")
                        ).style.visibility = String("hidden");
                    });


                document.querySelector(
                    String("#header-heading-span")
                ).style.color = String("rgb(0, 0, 0)");
                document.querySelector(
                    String("#header-heading-span")
                ).style.fontFamily = String("monospace");
                document.querySelector(
                    String("#header-heading-span")
                ).style.fontSize = String("7mm");
                document.querySelector(
                    String("#header-heading-span")
                ).style.marginLeft = String("33mm");
                document.querySelector(
                    String("#header-heading-span")
                ).style.borderRadius = String("3mm");
                document.querySelector(
                    String("#header-heading-span")
                ).style.padding = String("0 8mm 0 8mm");
                document.querySelector(
                    String("#header-heading-span")
                ).style.boxShadow = String("0 -1mm 6mm 3mm rgb(51, 51, 51)");


            } catch (err) {
                if (err) {
                    console.clear();
                    alert("bug");
                    console.log(err);
                };
            };
        </script>


    </body>


    </html>