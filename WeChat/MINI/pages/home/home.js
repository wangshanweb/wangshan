// pages/home/home.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    message:"小程序的数据",
    app:"home",
   // rows:[{id:1,name:"华为"},
    //{id:2,name:"iphone9"}],
    //users:[],
   // products:[]
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
   /* wx.request({
      url:"http://127.0.0.1:3000/products",
      methods:"GET",
      success:(res)=>{
        console.log(res.data);
        this.setData({
          products:res.data
        })
      }
    }),
    wx.request({
      url:"http://127.0.0.1:3000/sales",
      methods:"GET",
      success: (res)=>{
        console.log(res.data);
        //将返回的数据赋值操作是错误的，不能将之保存在rows中
        //this.rows=res.data;
        this.setData({
          rows:res.data
        })
      }
    })*/
  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {

  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {

  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {

  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {

  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {

  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {

  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {

  }
})