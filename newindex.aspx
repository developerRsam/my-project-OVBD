<%@ Page Title="" Language="C#" MasterPageFile="~/Common.master" AutoEventWireup="true" CodeFile="newindex.aspx.cs" Inherits="newindex" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .newStyle1 {
            font-family: "monotype Corsiva";
        }

        .border {
            borderx: 1px solid purple;
        }

        .newStyle2 {
            color: #FF0000;
            text-transform: none;
        }

        .newStyle3 {
            font-family: "monotype Corsiva";
        }

        .newStyle4 {
            font-family: "Monotype Corsiva";
            color: #FF0000;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server">

        <div class="row">
            <!--start of slider row-->
            <div class="row border">

                <!--slider section-->
                <div class="col-md-12">

                    <!-- Start Of Carousal -->
                    <br />
                    <div class="container col-md-12">
                        <div id="myCarousel" class="carousel slide" data-ride="carousel">
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                <li data-target="#myCarousel" data-slide-to="1"></li>
                                <li data-target="#myCarousel" data-slide-to="2"></li>
                            </ol>

                            <!-- Wrapper for slides -->
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img src="images/47_Blood_Donation_-1024x768.jpg" alt="Blood1" style="width: 99%; height: 600px;">
                                </div>

                                <div class="item">
                                    <img src="images/8913671633_b3713e489b_b.jpg" alt="Blood2" style="width: 100%; height: 600px;">
                                </div>

                                <div class="item">
                                    <img src="images/Donate Blood.png" alt="Blood3" style="width: 100%; height: 600px;">
                                </div>
                            </div>

                            <!-- Left and right controls -->
                            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                    </div>
                </div>
                <!-- End Of Carousal -->


            </div>
            <!--end of slider section-->


        </div>
        <!-- End Of Slider Row-->
        <!-- start of row 2 -->
        <div class="row">
            <!--msg section -->
            <!-- start of child row -->
            <div class="row" >
                <div class="col-md-12">
                    <h2 align="center"><span class="newStyle4">Find a Donor</span></h2>
                </div>
            </div>

            <!-- end of child row-->



            <div class="col-md-4">
                <h2>Finding Donor Near You</h2>
                <p>
                    Fill the Information 
                    To Get Blood.
                </p>
            </div>



            <!-- end of msg section -->

            <!--start of module -->
            <a id="donor" ></a>
            <div class="col-md-8">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <br />
                        <p>
                            Blood Group:<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" CssClass="dropdown-toggle btn-info" Height="24px" Width="97px">
                                <asp:ListItem>Please Select a Blood Group</asp:ListItem>
                                <asp:ListItem>A+</asp:ListItem>
                                <asp:ListItem>A-</asp:ListItem>
                                <asp:ListItem>B+</asp:ListItem>
                                <asp:ListItem>B-</asp:ListItem>
                                <asp:ListItem>O+</asp:ListItem>
                                <asp:ListItem>AB+</asp:ListItem>
                                <asp:ListItem>AB-</asp:ListItem>
                            </asp:DropDownList>
                        </p>
                        <p>
                            Select State:
                                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" CssClass="dropdown-toggle btn-info" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Width="98px">
                                    <asp:ListItem>Select State</asp:ListItem>
                                </asp:DropDownList>
                        </p>
                        <p>
                            Select City:
                                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" CssClass="dropdown-toggle btn-info" Height="21px" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" Width="105px">
                                </asp:DropDownList>
                        </p>
                        <p>
                            Select District:
                                <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" CssClass="dropdown-toggle btn-info" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged" Width="84px">
                                </asp:DropDownList>
                        </p>
                        <p>
                            Select Area:
                                <asp:DropDownList ID="DropDownList5" runat="server" CssClass="dropdown-toggle btn-info" Width="93px">
                                </asp:DropDownList>
                        </p>
                        <p>
                            <asp:Button ID="Button1" runat="server" BorderColor="White" ForeColor="Black" CssClass="btn btn-info" OnClick="Button1_Click" Text="Submit" Height="34px" />
                        </p>
                        <br />
                        <asp:GridView ID="GridView1" runat="server" CellPadding="6" EnableModelValidation="True" ForeColor="#333333" GridLines="None" CellSpacing="2" Height="203px" ShowFooter="True" Width="588px">
                            <AlternatingRowStyle BackColor="White" />
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        </asp:GridView>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>

        </div>
        <!--end of row 2 -->


        <!-- be a helping hand section -->

        <div class="row border text-center " id="help">

            <div class="row">
            <div class="col-md-12">
            <h2 class="text-center"><strong>Be a Helping Hand </strong></h2>
            <br />
           </div>

            </div>           

            <div class="row">

            <div class="col-md-3">
                <a data-toggle="modal" data-target="#myModal2">
                    <img src="images/add-event.png" class="img-thumbnail" style="width: 70%" />
                </a>
            </div>

            <div class="col-md-3">

                <a data-toggle="modal" data-target="#myModal1">
                    <img src="images/facts.png" class="img-thumbnail" style="width: 70%" /></a>
            </div>

            <div class="col-md-3">

                <a data-toggle="modal" data-target="#myModal3">
                    <img src="images/register.png" class="img-thumbnail" style="width: 70%" />

                </a>
            </div>

            <div class="col-md-3">
                <a data-toggle="modal" data-target="#myModal4">
                    <img src="images/event1.png" class="img-thumbnail" style="width: 70%" />
                </a>
            </div>

                </div>

        </div>

        <!-- end of be a helping hand section -->



        <div class="row border text-center" id="about">
                <div class="row">
                    <div class="col-md-12">
                <h2 align="center">About Us</h2>
                <p><em>Real Heros Behind the Scene</em></p>
             
                        </div>
                    </div>

                <div class="row">
                <div class="col-md-3">
                    <a href="#demo" data-toggle="collapse">
                        <img src="images/pic.png" class="img-circle person" alt="RS" style="width: 70%" />
                    </a>
                    <div id="demo" class="collapse">
                        <p class="text-center"><strong>Rahul</strong></p>
                    </div>

                </div>

                <div class="col-md-3">
                    <a href="#demo1" data-toggle="collapse">
                        <img src="images/pic.png" class="img-circle person" alt="TA" style="width: 70%" />
                    </a>
                    <div id="demo1" class="collapse">
                        <p class="text-center"><strong>Pooja & Monika</strong></p>
                    </div>
                </div>

                <div class="col-md-3">

                    <a href="#demo2" data-toggle="collapse">
                        <img src="images/pic.png" class="img-circle person" alt="V" style="width: 70%" />
                    </a>
                    <div id="demo2" class="collapse">
                        <p class="text-center"><strong>Vamsi</strong></p>
                    </div>
                </div>

                <div class="col-md-3">

                    <a href="#demo3" data-toggle="collapse">
                        <img src="images/pic.png" class="img-circle person" alt="N" style="width: 70%" />
                    </a>
                    <div id="demo3" class="collapse">
                        <p class="text-center"><strong>Naveen</strong></p>
                    </div>

                </div>
                    </div>
            </div>
            <!--end of about row-->

         <div class="row border text-center" id="about">
                <div class="row">
                    <div class="col-md-12">
            <!-- Map -->
                <section id="contact" class="map">
                <iframe width="100%" height="100%" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" style="border:0" src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJNYeORswiKToR9eGcvPHuqNE&key=AIzaSyC62yqtz-hbCdus8G-97CCwLPZYdn4nCjY" allowfullscreen></iframe>
                <br />
                <small>
                    <a href="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJNYeORswiKToR9eGcvPHuqNE&key=AIzaSyC62yqtz-hbCdus8G-97CCwLPZYdn4nCjY"></a>
                </small>
            </section>
                    </div>
                </div>
         </div>
                    
        <!--- models area -->
        
         <!-- Modal -->
                <div class="modal fade" id="myModal1" role="dialog">
                    <div class="modal-dialog">

                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title">Blood Facts</h4>
                            </div>
                            <div class="modal-body">
                                <p><strong>Facts about Blood Needs </strong></p>
                                <ul>
                                    <li>Every year our nation requires about 5 Crore units of blood, out of which only a meager 2.5 Crore units of blood are available.</li>
                                    <li>The gift of blood is the gift of life. There is no substitute for human blood.</li>
                                    <li>Every two seconds someone needs blood & more than 38,000 blood donations are needed every day.</li>
                                    <li>The average red blood cell transfusion is approximately 3 pints.</li>
                                </ul>
                                <p><strong>About the Blood Supply </strong></p>
                                <ul>
                                    <li>Blood cannot be manufactured – it can only come from generous donors.</li>
                                    <li>Type O-negative blood (red cells) can be transfused to patients of all blood types. It is always in great demand and often in short supply.</li>
                                    <li>Type AB-positive plasma can be transfused to patients of all other blood types. AB plasma is also usually in short supply.</li>

                                </ul>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            </div>
                        </div>

                    </div>
                </div>

            </div>


            <!--- End Of Modal1 -->

            <!--- Start Of Modal2 -->

            <div class="container">
                <!-- Trigger the modal with a icon -->

                <!-- Modal -->
                <div class="modal fade" id="myModal2" role="dialog">
                    <div class="modal-dialog">

                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title">Events</h4>
                            </div>
                            <div class="modal-body">
                                <p><strong>Blood Donation Camp On 15 August 17</strong> </p>
                                <ul>
                                    <li>Donated 2 litres of blood </li>

                                </ul>

                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            </div>
                        </div>

                    </div>
                </div>

            </div>


            <!--- End Of Modal2 -->
        
        <!-- Modal -->


        <div class="modal fade" id="myModal3" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Register - Be a Real Hero Donate Blood </h4>
                    </div>
                    <div class="modal-body">
                        <a href="register.aspx">
                            <input type="button" value="Register" /></a>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>

            </div>
        </div>

        </div>
        <!--- End Of Modal3 -->


        <!--- Start Of Modal4 -->

        <div class="container">
            <!-- Trigger the modal with a icon -->

            <!-- Modal -->
            <div class="modal fade" id="myModal4" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Upcoming Events</h4>
                        </div>
                        <div class="modal-body">
                            <p><strong>Blood Donation Camp On 26 Janaury 17 in Kondapur, Hyderabad</strong> </p>
                            <p><strong>Blood Donation Camp On 15 August 17 in Bhilai, Chhattisgarh</strong> </p>
                            <p><strong>Blood Donation Camp On 15 August 17 in Madhapur, Hydearbad</strong> </p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </div>

                </div>
            </div>

        </div>


        <!--- End Of Modal -->


        <!--end of models area -->

    </form>
    <script src="js/jquery.min.js"></script>

    <script>
      
        $(document).ready(function () {
         
            $('a[href^="#"]').click(function () {

                var the_id = $(this).attr("href");

                $('html, body').animate({
                    scrollTop: $(the_id).offset().top
                }, 'slow');

                return false;
            });


        });
        // Disable Google Maps scrolling
        // See http://stackoverflow.com/a/25904582/1607849
        // Disable scroll zooming and bind back the click event
        var onMapMouseleaveHandler = function (event) {
            var that = $(this);
            that.on('click', onMapClickHandler);
            that.off('mouseleave', onMapMouseleaveHandler);
            that.find('iframe').css("pointer-events", "none");
        }
        var onMapClickHandler = function (event) {
            var that = $(this);
            // Disable the click handler until the user leaves the map area
            that.off('click', onMapClickHandler);
            // Enable scrolling zoom
            that.find('iframe').css("pointer-events", "auto");
            // Handle the mouse leave event
            that.on('mouseleave', onMapMouseleaveHandler);
        }
        // Enable map zooming with mouse scroll when the user clicks the map
        $('.map').on('click', onMapClickHandler);

    </script>


</asp:Content>

