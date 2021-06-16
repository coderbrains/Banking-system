<%-- 
    Document   : index
    Created on : Jun 16, 2021, 7:08:29 AM
    Author     : Awanish kumar singh
--%>

<%@page import="org.hibernate.Transaction"%>
<%@page import="com.bankingsystem.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Kotax | India's Largest bank</title>
        <%@include  file="common_components/commonjs_css.jsp" %>
    </head>
    <body>
        <%@include  file="common_components/common_nav_bar.jsp" %>

        <header class="header">
            
            

            <div class="container h-100">

                <div class="container h-100">

                    <div class="container h-100">
                        <div class="container h-100">

                            <div class="row h-100 align-items-center">

                                <div class="col-md-12 text-center">


                                    <h1 class="animate__backInDown animate__animated wow">Welcome to Kotax Bank</h1>
                                    <p class="animate__flipInY animate__animated wow">It is one amongst the fastest growing 
                                        banks and the most admired financial institutions in India. The Bank offers 
                                        transaction banking, operates lending verticals, manages IPOs and 
                                        provides working capital loans.</p>

                                    <button class="btn btn-primary animate__backInUp animate__animated wow">Start Service</button>


                                </div>



                            </div>

                        </div>

                    </div>
                </div>
            </div>
        </div>
    </header>

    <!--services section starts here-->

    <section class="mt-5 mb-5">

        <div class='text-center'>
            <h1>About Our services</h1>
        </div>

        <div class='container'>

            <div class='row'>

                <div class='col-md-4'>

                    <div class="card animate__zoomIn animate__animated wow text-center">

                        <div class='text-center mt-4'>
                            <i class="fa fa-bell-o fa-4x"></i>
                        </div>
                        <div class="card-body">
                            <h1 class="card-title">Online</h1>
                            <p class="card-text">You can have all the queries online sorted. You can open online account , send money to another account , print mini statement.</p>
                            <a href="#" class="btn btn-primary">Get it</a>
                        </div>
                    </div>


                </div>

                <div class='col-md-4'>

                    <div class='card animate__zoomIn animate__animated wow text-center'>
                        
                        <div class='text-center mt-4'>
                            <i class="fa fa-asl-interpreting fa-4x"></i>
                        </div>
                        <div class="card-body">
                            <h1 class="card-title">Fast Exchange</h1>
                            <p class="card-text">
                                We provide fast exchanging of the money.
                                you can send receive money on a single tap and low internet usage.

                            </p>
                            <a href="#" class="btn btn-primary">Get it</a>
                        </div>
                    </div>

                </div>

                <div class='col-md-4'>

                    <div class="card animate__zoomIn animate__animated wow text-center">
                        <div class='text-center mt-4'>
                            <i class="fa fa-rupee fa-4x"></i>
                        </div>
                        <div class="card-body">
                            <h1 class="card-title">Low cost</h1>
                            <p class="card-text">

                                We charge the minimum cost for each and every transaction. Yearly fees for the services is also too low.
                            </p>
                            <a href="#" class="btn btn-primary">Get it</a>
                        </div>
                    </div>

                </div>


            </div>

        </div>

    </section>

    <!--services section ends here-->

    <!-- starts of the slider section -->

    <section class="saying animate__backInLeft animate__animated wow">

        <!-- Set up your HTML -->

        <div class="container text-center py-5">
            <h1>What people say about us.</h1>
        </div>

        <div class="container">
            <div class="owl-carousel owl-theme">
                <div>

                    <div class="card">
                        <img src="https://i.pinimg.com/originals/5f/29/22/5f29228bb8a20d94b8550d051785c813.jpg"
                             alt="Deren sammy" class="img-fluid rounded-circle mx-auto"
                             style="max-width: 150px; max-height: 150px;">

                        <div class="card-body text-center">
                            <h1>Derran Sammy</h1>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Placeat quod iusto harum debitis
                                laboriosam perspiciatis quisquam suscipit ut fuga. Ex minima esse beatae dolorum quis
                                aspernatur aliquid adipisci temporibus quia.</p>
                            <div class="container"><button class="btn btn-primary">Get here</button></div>
                        </div>
                    </div>

                </div>

                <div>
                    <div class="card">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5Xtsi7ySd-dTGeuRsauTPcV8jz84mPw8pwAv42zkUj5INP62mTqPzsxkg6UZgQByCfqI&usqp=CAU"
                             alt="Deren sammy" class="img-fluid rounded-circle mx-auto"
                             style="max-width: 150px;max-height: 150px;">

                        <div class="card-body text-center">
                            <h1>Flip Huges</h1>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Placeat quod iusto harum debitis
                                laboriosam perspiciatis quisquam suscipit ut fuga. Ex minima esse beatae dolorum quis
                                aspernatur aliquid adipisci temporibus quia.</p>
                            <div class="container"><button class="btn btn-primary">Get here</button></div>
                        </div>
                    </div>



                </div>



                <div>
                    <div class="card">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_OHLpP0eeTb7VNAG1VxPJo-xOtX9K7XdcuqrYn4oaS62MbVu1eDJ51iH_Th6uyWnIabw&usqp=CAU"
                             alt="Deren sammy" class="img-fluid rounded-circle mx-auto"
                             style="max-width: 150px;max-height: 150px;">

                        <div class="card-body text-center">
                            <h1>Kalp Caos</h1>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Placeat quod iusto harum debitis
                                laboriosam perspiciatis quisquam suscipit ut fuga. Ex minima esse beatae dolorum quis
                                aspernatur aliquid adipisci temporibus quia.</p>
                            <div class="container"><button class="btn btn-primary">Get here</button></div>
                        </div>
                    </div>


                </div>

                <div>

                    <div class="card">
                        <img src="https://pbs.twimg.com/media/BduTxWnIUAAKT_5.jpg" alt="Deren sammy"
                             class="img-fluid rounded-circle mx-auto" style="max-width: 150px;max-height: 150px;">

                        <div class="card-body text-center">
                            <h1>Jerry Thomas</h1>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Placeat quod iusto harum debitis
                                laboriosam perspiciatis quisquam suscipit ut fuga. Ex minima esse beatae dolorum quis
                                aspernatur aliquid adipisci temporibus quia.</p>
                            <div class="container"><button class="btn btn-primary">Get here</button></div>
                        </div>
                    </div>

                </div>


                <div>

                    <div class="card">
                        <img src="img/aks.jpg" alt="Deren sammy" class="img-fluid rounded-circle mx-auto"
                             style="max-width: 150px;max-height: 150px;">

                        <div class="card-body text-center">
                            <h1>Andrew Symonds</h1>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Placeat quod iusto harum debitis
                                laboriosam perspiciatis quisquam suscipit ut fuga. Ex minima esse beatae dolorum quis
                                aspernatur aliquid adipisci temporibus quia.</p>
                            <div class="container"><button class="btn btn-primary">Get here</button></div>
                        </div>
                    </div>



                </div>

                <div>



                    <div class="card">
                        <img src="data:image/jpeg;base64,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"
                             alt="Deren sammy" class="img-fluid rounded-circle mx-auto"
                             style="max-width: 150px;max-height: 150px;">

                        <div class="card-body text-center">
                            <h1>Pankit Patel</h1>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Placeat quod iusto harum debitis
                                laboriosam perspiciatis quisquam suscipit ut fuga. Ex minima esse beatae dolorum quis
                                aspernatur aliquid adipisci temporibus quia.</p>
                            <div class="container"><button class="btn btn-primary">Get here</button></div>
                        </div>
                    </div>

                </div>

                <div>

                    <div class="card">
                        <img src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBYWFRgWFhYZGBgaGhkaGhkYGhoaHBgZGRwaGhgaGBgcIS4lHB4rIRgYJjgmKy8xNTU1GiQ7QDs0Py40NTEBDAwMEA8QHhISHjQjISs0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0MTQ0NDQ0NDQ/NP/AABEIAOAA4AMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAAEAgMFBgcBAAj/xABBEAABAgQDBQYDBgUCBgMAAAABAAIDBBEhBTFBBhJRYXEigZGhsfAywdEHExRCUuEjYnKCopLxU2OywtLyFRY0/8QAGAEAAwEBAAAAAAAAAAAAAAAAAAECAwT/xAAhEQACAgIDAQEBAQEAAAAAAAAAAQIREiEDMUFREyJhBP/aAAwDAQACEQMRAD8AjJycACgXxQ4ouZjNoopz6myiMdichUSLTJJhmpXWwCUVClaLSibFMATEw8suEe2HRBT5FENBY/h+MaOTk9Ha67VAw81NYdL1I196qMUtjyb0G4VLF2YsrbhTHwzVpI5AV8QEBKyxABFPEeiVEmQw1Nu+6Xb0aLS2aPh2Jlze18h5aKQ/FjS/S6ymFjLzXdy768+qIhbSuZQmvWuXWuS0wZNo1NsSqWX0VAkNs2Nq59xQmnMaear2JbYx5hxo4w4dcm2PiLkpqLJcjWXT7AaFwqM75LzcRhk0Dx4hYbHnwTQOcK5kXd/qyHcm/v2gWLieJLq+IKvAWRv0OK12RB6GqcWBS2OxoZBY9wA/KSXA9zrjuKu+AfaI00ZMs3f+Yyrmj+ppuO7wUOLRRoy4mZaZY9oexzXtOTmkEHvCeSA6uLy8gDy8vLyAPLy8vIA8vLy8UAfL0RjtU5LQTWqlokELzGgaIIoRCYn2tXAV2qYCYij5iFVSRavCXBICBEPBkySpvDmBjrotsEDIICYj1NGd5U1ei4qtknHxGnZZnyz/AGUfGjgXOaFEUCwPU++iHjtLq3txI9FqopLQNiouIkZDxokNnnaHjzGX0Socq1t3VPCvyaPmjZeYh1HZFrZZ+aTY0gnCpYuYSRqLaW9NVyblgPis3rc9GqT/ABTRDJaMyKc7D6eZULMxnuJvUjlbkOqSk7G0hIiNDaDzSWRq2+XsoZznanqN36FItn5j6LSyGgh8GuRHcmBvDW/P6p4OqM69c0h5revckBKbP7RRpV+9DcaE9tjq7j+7Q8wti2e2ihTTasNHAVcx3xN5ji3msEcisNxJ8F7XscWuaagj0PJRJfBo+iwvKB2Zx9s1CDxQPbaI3geI5H3kpf78A0KkY+vLgcuoA8vLlV4lAHUmqGnJtrG1JUbBxhuZKVgY44JO4lleCogZIolMXXBdYEAOtolsCZqnHv3GFx0uhjSsHnpo13G5nyCjo0Td7I7ym/vzd5+J3kMgEOx1ST4KoobC4fv3oiN+g+Z06BCQ3UTjHePkPqVbYJD9CQSTQHNxzPIBchAVAAXAC80FT78lZsEwFx7RCylJI1jBsZgQCW06W05KMmsOe29LcKe7rR5LBg3RGTOGtcKUWakzTBGQRgSLjwvl6IMbzTxHP5rRcR2cFyAO5VefwcsNfKmfdxVLk+kvhfhBOfwt6eK7vnPXiMilzEAt0oPeSFa8tPqNCOI4LVSTMHFx7CGP/dOuZUcaoaI2lHNNvROQogpy9OaGC+E3stjj5aKHi4yc0/macx11B4ha5LTzI7GvY6rTfmONeYWFRrHebnr9fl4K6bAY6GP+7eew82r+V/PkVnJFUaYyK5pFckY6aFKrhhgtVbxeK5lSDZJ6QicZNOcUzP4mGC5oh8GmWlgNaoLEoYiPaNK18FN6ChsQnzBq4kN4IluzwpZTUjADQEaAqoDAqpsOSyE0MyqIFEpTUiqeaKhMDjDdBY5GqGsGtypCFryzVcnI29FdyB8UiooaiPqU7CFqoZhrU9wRTzQNb3/IKkM7v26J+Cwk011PXRNFtD/TnzdoprCZKrmtpc3d35/LxKmcqRpxxyZPbNYODRxHRXqVlQAAhMKld1oU1DC547ds6JOtIVDhUS3Q0oLoK1M7BnwAVGT2FtdopspqIKqWhxk0ZzjWAZkDRUedlXMJFLi/ctsnIAKo+0OGVqQOilSxZcoqa/0okF9baHy92SaUqKZactV6YZuPIp/slbwqCb2oeYNq+nguhOzlarTHJd4pTQeiTLRix+ff6HqmGEtfT04JUV17ewgDdNksd/ESw3j/ABGANfzpk4dfWqZxtwLCCsy2SxgwYjXV7Luy4cjr3WPirpis8HDOyyk60KmxuTnnQ200R2Ez28+pKh3Pa5tk/hsru3UMaL7BmgiTONAuqrDeQM0DiUxEodw3VKQmmUQpnUomWY52TSe5ERMOe67WGq0tEuJHBqJY2yLl8Ii6sRTsFjE2ankhYsh5o7kNzhzPeqlv2JObirRtXCdCDYbrF1z3fuqm41cOtfD/AGSRpVIJZoEQDWJyaB5ZefogmvvX3b90c1lHHiSf8RdUSFYdD3nCuV3npp8h3q67MSu8d86nyCrUhBoxztXENHT3TwWj7OSW6wFYcjt0dXEqVkzLw6AIxoSYTE81qEhSZwLyWQuEKqFYmiS5qcC6UgsCjQyoPFJYOBVlexBTMtUKJRs0jIxvaWT3Tvc6e/eqgXOt0PkVpe02GbzXW9+ws2mGFpI6q+KXjI5o+obmXV3XakUrzCW59gfHv/dMh1WEai6S19RT3f8AdamIRAiUVylpkvhA1vr0p78FQTEv19Vb8BiVhjiK+RyWc16C6omJF91YYDqCqrMBtCb20Uk2b3WqJbCJJzMzQVqkSs203J0VSxSfe926zLUpqVjOYKElOMdCctmxQtn2DQIgYSwaBSa8rxQOTI5mGtGiJZKMGgRCGxGaEKG+IcmNLvAJpJCuzCftLjh87EDcmUYO74vOqprcyVJ43HL3ue7N7nOPeSos501zKaKaHoQ7TRzB7hc+ikGOuTwqK9LlR8sO1vcB79PNHPPZ6/M3Q2CRYpAj+G3mXeQ/8loUtjDGMDW3oKE8eKzfCpN0aKxgNAG/MLRpPZ9gZQuNVm6uzoiv5D4WPs6J9mNMP5goKZ2dd+V5p0/dRkTB4jb71fJS5UWoxZeGTgdkU62Kqfh8Z7TR1VYIMVSpilBIkPvEiJMIWJFsoLFJt2Tc03IIxssL59jc3AJh+PwRYuVLEnHeeA5qQgbLl13PPcEKQ3FEjieJwXNOd+SyzaOGA/ebdpWoHZ9lKFxKp21eAfdguaSWnMHTmnauyWm1RQmuoeSba6hI5kJyOyg96WQsV1/BbdnK1Q4/PzVtwBhLAdb9/D0VQ4FXfYaK15dDd8TqubxG6LU96KJ9Dhtkg80PvNDx46m8Vkw0VpStjycPfoqpHe5z91oKyi7LksSQlnt1SI9M0Mxm78Q99ESCHgtHBbJMxdM3peXF1UB5VP7QI/8AAbBaaOiup0Y2he48hUE8qq11us4+0WcIiPvaFL5fzxXEDuLGxAUn0OPZkE/EDnvc0UFaNBzAFmg8dPBB0z4n5J2Lw8+uvUpt9rewPfqmhsJlm0aT70AT7via3v8AmmYAq1o517gUsGr6+/d1L7LXRbtkIwEZ7jo1vqa+ivL9poTM3NA4vdujuFyfBZphWFxnsJY7dLnZ8RSwrTij4ex8UFxiDfDmkVBJo4g0PEqFG32bZNRqi8DbOARZ8PvL2+DnNonIeMMiWyPCoII4gixCzCFsfNtpSHUCoIDmX53Kscts5HhthuhDtho+8a91GudrQ6HO6JR1phCW9ote8C5SstBso6UkyQCbHUcPBT0ky1FnGOzSckloAmmEBRLYfaqVZJyHZRboGZTlHYoy0R01iUOABvUqchUDLUk2A5lCP20gtF4jAf5WxH/5UFe5QE7s/MR3PfHbuAtd920PBLT+Xf8A24quP2RmQalgpcU3q152CuMVWyJzfiNChbWMd8LmPGu4aOH9jknFZlkeES015fUKk4js5EIaWNILWtBdcVIFCaIrB8Jnmntkbmtc/SqmUa6ZUZXpoqc825HAuUbGPorHjcmWRXAjO/1VfnGUK0hK0c/JGmIDuyFL7PzxhxWvByIUOzLvUlg0mYsVkJtnPNGkmg3tKq5LRMXTNhxUh7A8EFr2h1f1dkEUOliPAqoQ2Uea5qZ2cjPdLxZZ7SIkB9QDnuuG80c6V8HBQc+HNcHDw9QudakbvcQuZg1ognRGssbHKo93UjAiA0Kj8Zlg51uR765cluto5ZKro2mHibSBdEtmmkVqo6LhYSPwrhYKbHRISUzvl3W3csk+1CcP4iJDPw0hupoaMBAPLPwWpyEHcNOI+Zqsi+1QVmTEGRIh/wBzADfuiDw5ITKSKC596m59+JSIYJ8UiJwGZ9U9EsA0d59VYgmGfT5pUu3eNOJATO/QH30U3sjJ78dlRZvaPyWbdG0Fbo03Z7BgIDGmxoD3+yj42GRR8Dx3hSeHto0I5TimauTj0VRuGTJN3NHRGy2EOHxvLuWQU84JDkYJCfI2CsgAWARcBtEg2TsFUkRJ6G5ltUIYNVIRghxRNoEyNmMOJu1xBQRwqL+sHuVlalbqlwTKXI0QEDCXfmcD3It8rQUUoWJiK1GKQZNmYbc4bUB7R8OfQrPZuDXqtyxeVDmkEaFYzjcsYb3D9Jt5/JKGnQciTjZCtYjsMi7kWG+vwvYe4OBKZjsyeMjTuKQw+q2fRzLTNRmcQpOw4oJrFD4Lz+pzbsee4tHWGorGRRoFam9+IqaVHGiIxpxe6DFbXddEYQSAKu32g0AGgiX6jgo7Eo1Vz9s6FqIqUmuyBqPMKSlpX7w0JoK6a9VX8PO+8NF1dsPkXChCuU8ERGOTNNiRgEyyMCVCTU9RtaobDsUDibqMm2FJIn8TmAxgcM60pxqCsv8AtClgJff1++fXvJp5Qz4q4Y1PVa0V/N8j9QqltzFaZcgm+814HEkPhkDoX1Kal/QsaRl7GUNff+6STVwHRKc5Ilm1JPD1NvqtzMefw5+SvWwkvQ72rj5BUIuqepAHRaTsiAzdrwWUzp4ezSJd1AiWxFFMjWSjM01RkW42STooQkScvRuah5/FN2wudAmZXfFHu60UOQKFdlmbCtnVEMNlV5zahjBQuvwAJPgBVdlMca8VDqhVmhfm2WfeCDiMJyNFCzOMNYKl1EiS2mhusHX51HhVPNB+cl0S0OcLTuuzCOZHBVdixN8lw7kiBOmtDmFGdMrCyzmIm3vUbDmq6pRmFeROFHJ0WKyfayVq6M8aFo/xqfULUpiJULMdp4gECK42L4hA/t/9SpvYmtFOlIlRuHuqm3MO9Sl6oVj7hSTTUbwzFPLIrdnKmaPuCIyCAOwwhkOtO02G3ee6mhL3MJ6jgkTGD10uidjCYgAOUNjWN61L4h/1EeAVtdKt3gKLmafh0JqihYPgpZHyt81ocnI2sm3SrQ4EBTUo2gSksuxQljdFOxCESKVso+CwsyKkp2ZAQLKnNUujOTVnYz3OAr08Qq1tdGJgkf0d28RUdxYrWGCneFTtpxRjx/zPG8R3zCSX9FKVqijxPonG9lhPG/yHvmkvZU06BJmX6e6e6rpMhtrqPZ1b6iq1yBL7jGvGlPBY5HdqFuuD0iQGHRzGnxCx5ujbgfYT+KoAUFNYlQE6I9krUUOiYmcLDi3gDU9ywts6016CYbDc92+4W0rwVkZAsq3PYxClhV7gNANSmJbbPftDhudzpwzWkaJkm3onpnCmE726KoCNherRQ8kj/wCfiHNjx/aPkvQ8dceP9zaJuKY1GSEMwh5NX1PVSMvhjRfdHgmHY68cO4Jv/wCyOF90nuKaikElImxL0ChcQYa1AuE3F2qa0VewgcaIOX2ihTD91jt468lM6aJjaew+DMmlU62dAzSWStimI8rQdaLO2aOg2FFLq8FjW0GKPixXwrBjYr90DiC4X43K2KohwnvdYNaXdwFSsIlnF0VrqVLogNOZcDTzXRxq9nJzSrSGGC6k5B9D09NULMM3Xup+okdK2yTkqb15/RbHMbD9m8MCC7jvuFeVL+PZVpe/t++az/YafLd5ubTSnI5n0HgrpB3nPqQsGy3Yc991IwIllH/dlPwTSxUMtFHZCe65B6Ihku/QK7QsHaNEQ3Dm8FWycUvShvgxBXs6KtbRyLywFwpV7AOZNR6kLYzhzeCqH2gQQxkP+sE2rYOYLjXNJxfY4tWYgfiPUnyshIhv4o6N8RHM+VkA76roRMhh61f7OsUD4Ahk9qH2afy5tPh6LKNVMbM4sZeOHV7DqNd8j3KJxuI+OWMjdRnVFObVvVREhNB7QQa1CPgvINNFzpnW0RWJ7Pw47SHtrXUWI5g6FR2zmHski9sUgt399j6U7NGi9cnWV0Y2ljkVHzkIsNRcei1jVbBU3TJWWZCdv0De1Teyta3TinoEnDawMLQRTrVVowYb2kEbpdTeLSRvbuQcRmEY+C9wox+6KUFHG2lhWyqhS4p/SYk5CGxlAxvgEFOwIDGNY4taC8AV1dWwqhWw4tGgRQ2g4k1tTKqBjysMO33uMRwNq0oOgHcnX0I8U29sgtpIT5hzmQuy3fIc8jLdoLDXgOiM2e2ZZLCwq7VxzKmJaHvHeIoNAFIsYodVSCSUXoZ3BRBubUoqZfogokQNFVkxorn2h4kIUo9gPaiUYOh+P/EHxWRy7aEEZg1Hdkp3bHF/xExRpqxlWt5n8zvKndzURKtqSdAP2XTCNI5OSWUhuId55PElFyzMvPuohd3tDqPVSMk2oJ4fMkKmQi7bCSRfEaKaNeOYa/7sjv3itfbJjeblS/os6+zgN/ENIp/+fQ6teSSRxoBlTJakwZDhbwt+6zx7KbGzKhJdJgotdRghKTOUXqLq4rok8s++1SJRjNKNe7rR0Ogpzy71oKyj7ZJsdhmoYT/qeKf9KTKj2ZNEfVxPGvmho4oiYTKlDzQvTkqQMYc1Icn2NqO4+QTFdefrmmSXvYbaLdIgPNx8BOo4dQtOlYodQr55hxCx7XA0IINehWs7P4ubNce/iubkjTtHXwyyVM0eCA5tE3EhmiGkJoWUq2hTjtBLTK9NSQNxVpQD2RBkfJW90EcE06UB0TxfjNI8zSKnuRD+YoiVlL1cSVYfwI4LrZUBLF+sqXM2qBoEOydiWCfLQLqKn5sAG6b0jFbYxHiXKz7bvabdBgQz23CjiPytP/cVKY5jlAWsz48FlU0+sV5JqS43OpShG3bJ5ZOKpCIbaBESpoHe+KbhixTsDUdF0HKjjfiHUKQkgdx/EEU/yPyUezPxREvFoaHJ3v6pMtGh/ZlM0nd39UN1M/5HehIWzQ8+t/ID6L572Wnvuo0KJqw0IpQuvcHmQT3gLfJKabEa17CHNcKgjgdfIKF2OSDF5eXFRB1eXkkoATEitaKuICwH7S8S+/mXOaew1263mWgVpyFj/ctk2mjNhwnPN3HsMB/U6wpXW/jRYZPSofMPDj2IQO+4CxdclopkS6jeRqp9LS0RcuzdaT/LU9+X1UdMjtFTUZ/Yc4i7naaUuQOWihnmrj3q0Jjcse00c/WiHpmE6w0c08CPkkxRd3U+qZIh2nP9gr3hQJhsOtB6Khk5e9Voeyzas3ToB6LDm6N+Dtlgw3Fi3suPQq1YdjAcKVvwVNmJEjJDMe5hsSCFgpUdTjfZqUOdBCU6aAWcwcfcz4vFGN2kB1C0XKT+RehHB5LkSaaBmqM/aQfqA71Hx9oi6zKnmj9RfmW3FMYa0G6puIYq+Id1uuqGo+IaklSEtIUWcpmihRAz8LdZUrPox7Tup9VqONQuwRyWYTDKOI5lbcDuzm51VB0qARXiPNKhCju+nzTEi6xHu+XzRUbMOHI+Fiuk5kDOFHHrUeoTkXPeGVinphgNS3MacaCyZFhyy7ikMPkY1/P3zWjbJ7ROl3Uc7fgO7RobsrnEAz3K/EL7pvkbZbDJaehVowqZD2bhF/iaQd14cP0v0dyyNVLRSkfQUCMHtDmkEG4I1BTtVlOwW0JhfwnP34VaFrqNfAcTm5msMnVtmk6C61FkSpopT+ikvg4Su0XgEPOPNN1vxOtXgNSqJKZtnPEuJa0uDOxDH/EmHdlrW8Q3XSvQqg7QSH4WXZDJBe+sSK6tS52Tb8Kk0/oJWi49ABmYLKUZDhvAI/LEilkNjuoa55r1WU7fYqIsy9jDVjXUB40AbblYkf1FTVsvoiIh/ht6n1P0CjWNs4+7qSju/hs6E+tFHPNGkK0KQI5djDtHmkvKW9tz1KZIzDbUgcwtC2cO6W91eipGGwC6IBw9cloOFS9CFzc78Ongj6W/7moUTPyOoCm5V9gE5FgVXOdZRo8sUG6XKtc9JUuAo4wFLKRCtlFJSkgjIUsFKy0vRFiY1LSVAjPugE+xi65qdE2V/E4Nj0WWYtL7sR3VaftDicOGCCau/SM+/gs0nIhe5zzqdNBUWXTwRd34c3/RKLVegcoe0RxB8W39AR3o1z7A8PTX5IJvZfUaOr4FHxod7ZEe/RdRyIRvUPl3aLr9fP6pt1aCulvoV1z+CQ2da7TuRUhFANDr5H3qgnH36JyG7XgmBZGQw5zXO3ju/mad14tm06kcDnktS2Rx3fa2XjOH3jWgw30AEWGR2XgZV0Lf2KyWSmLA1uO48lMw5pxYCw9uG4vYBmDmSznnVn5gSRcKZUXHemf/2Q=="
                             alt="Deren sammy" class="img-fluid rounded-circle mx-auto"
                             style="max-width: 150px;max-height: 150px;">

                        <div class="card-body text-center">
                            <h1>Indra Nui</h1>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Placeat quod iusto harum debitis
                                laboriosam perspiciatis quisquam suscipit ut fuga. Ex minima esse beatae dolorum quis
                                aspernatur aliquid adipisci temporibus quia.</p>
                            <div class="container"><button class="btn btn-primary">Get here</button></div>
                        </div>
                    </div>

                </div>

            </div>

        </div>


    </section>

    <!--//slider section ends here-->

    
    <!--contact us-->
    
    
    <section class='mt-5 mb-5 '>
        
        <div class='container text-center '>
            <h1>Get in touch with us</h1>
            <p>Our costomer service is the best and available for you 24X7 with polite behaviour.</p>
             <i class="fa fa-phone fa-3x text-warning"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <i class="fa fa-heart fa-3x text-danger"></i>
            <h5>+91 85478954XX</h5>
            <h5>awnishkumar@gmail.com</h5>
        </div>
        
        
    </section>
    
    <!--contact us ends here-->

</body>
</html>
