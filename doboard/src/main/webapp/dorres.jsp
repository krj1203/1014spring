
.wrap_gift {
    border-bottom: 1px solid #f4f4f4
}
.wrap_gift.head_aticle {
    position: relative;
    border-bottom: 2px solid #333
}
.wrap_gift .head_aticle .search_date {
    position: absolute;
    top: 0;
    right: 0
}
.wrap_gift .head_aticle .search_date .btn_layer {
    top: 0
}
.wrap_gift .head_aticle .search_date .layer_search {
    top: 44px
}
.wrap_gift.gift_detail {
    border-bottom: 0
}
.list-gift-product {
    padding: 36px 20px 0
}
.list-gift-product li+li {
    padding-top: 72px
}
.list-gift-product .product-header {
    display: flex;
    justify-content: space-between;
    padding-bottom: 6px;
    color: #333;
    line-height: 36px;
    border-bottom: 1px solid #dddfe1
}
.list-gift-product .product-header strong {
    display: block;
    overflow: hidden;
    width: 600px;
    font-size: 16px;
    text-overflow: ellipsis;
    white-space: nowrap
}
.list-gift-product .product-header .link-detail {
    position: relative;
    top: 2px;
    font-size: 12px
}
.list-gift-product .product-header .link-detail:after {
    display: inline-block;
    width: 10px;
    height: 10px;
    margin: -1px 0 0 -1px;
    vertical-align: middle;
    background: url('https://res.kurly.com/kurly/ico/2021/arrow_right_10_10_gray.svg') 0 0 no-repeat;
    content: ""
}
.list-gift-product .product-content {
    display: flex;
    flex-direction: row;
    justify-content: space-between;
    padding-top: 14px
}
.list-gift-product .product-detail {
    display: flex;
    flex-direction: row;
    align-items: center
}
.list-gift-product .product-detail .thumb {
    overflow: hidden;
    width: 60px;
    height: 78px;
    margin: -12px 20px 0 0;
    background-color: #eee;
    background-size: cover;
    background-position: 50% 50%;
    background-repeat: no-repeat
}
.list-gift-product .product-detail .info {
    overflow: hidden;
    line-height: 18px;
    color: #333
}
.list-gift-product .product-detail .info dt {
    float: left;
    clear: left;
    width: 60px;
    margin-bottom: 8px;
    font-size: 12px
}
.list-gift-product .product-detail .info dd {
    overflow: hidden;
    float: left;
    width: 400px;
    font-size: 14px;
    font-weight: 700;
    white-space: nowrap;
    text-overflow: ellipsis
}
.list-gift-product .product-status {
    display: flex;
    align-items: center;
    justify-content: center
}
.list-gift-product .product-status .txt {
    display: inline-block;
    margin-right: 20px;
    font-size: 16px;
    font-weight: 500;
    color: #333
}
.list-gift-product .product-status .link-inquiry {
    width: 96px;
    height: 36px
}
.list-gift-product .product-status .link-inquiry .txt_type {
    font-size: 12px;
    line-height: 36px
}
.list-gift-product.loading .product-header strong {
    position: relative;
    border-radius: 2px;
    height: 36px;
    background: #eee
}
.list-gift-product.loading .product-detail .thumb {
    position: relative
}
.list-gift-product.loading .product-detail .info dt {
    width: 50px;
    margin-right: 10px
}
.list-gift-product.loading .product-detail .info dd,
.list-gift-product.loading .product-detail .info dt {
    position: relative;
    height: 18px;
    border-radius: 2px;
    background: #eee
}
.list-gift-product.loading .product-status .txt {
    position: relative;
    width: 100px;
    height: 16px;
    border-radius: 2px;
    background: #eee
}
.list-gift-product.loading .product-status .link-inquiry {
    position: relative;
    border-color: #eee;
    background-color: #eee
}
.list-gift-product.loading .product-detail .info dd:after,
.list-gift-product.loading .product-detail .info dt:after,
.list-gift-product.loading .product-detail .thumb:after,
.list-gift-product.loading .product-header strong:after,
.list-gift-product.loading .product-status .link-inquiry:after,
.list-gift-product.loading .product-status .txt:after {
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    transform: translateX(-100%);
    background-image: linear-gradient(90deg,hsla(0,0%,100%,0),hsla(0,0%,100%,0.5) 60%,hsla(0,0%,100%,0));
    animation: shimmer 2s infinite;
    content: ""
}
.wrap_empty {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    height: 557px;
    text-align: center;
    font-family: NotoSansCJKkr
}
.wrap_empty {}
.wrap_empty strong {
    display: block;
    margin-bottom: 10px;
    color: #666;
    font-size: 16px;
    font-weight: 500;
    line-height: 1.25;
    letter-spacing: -0.3px
}
.wrap_empty strong:before {
    display: block;
    width: 48px;
    height: 48px;
    margin: 0 auto 16px;
    background: url('https://res.kurly.com/kurly/ico/2021/present_48_48_gray.svg') 0 0 no-repeat;
    content: ""
}
.wrap_empty p {
    margin-bottom: 24px;
    font-size: 14px;
    color: #b5b5b5
}
.wrap_empty button.btn_type1 {
    width: 150px;
    height: 44px
}
.wrap_empty button.btn_type1 span {
    display: inline-block;
    height: 100%;
    font-weight: 500;
    font-size: 14px;
    line-height: 44px;
    color: #fff;
    text-align: center
}
.wrap_gift.gift_detail .head_aticle {
    border-bottom: 0
}
.wrap_gift.gift_detail .order_info {
    position: relative;
    padding-bottom: 26px;
    border-bottom: 2px solid #333
}
.wrap_gift.gift_detail .order_info h3 {
    max-width: 520px;
    font-size: 20px;
    font-weight: 500;
    color: #333;
    letter-spacing: -0.4px
}
.wrap_gift.gift_detail .order_info .mypage_qna {
    position: absolute;
    right: 0;
    top: 0;
    font-size: 12px;
    color: #666;
    text-align: right
}
.wrap_gift.gift_detail .order_info .mypage_qna a {
    margin-left: 5px;
    padding-right: 11px;
    background: url('https://res.kurly.com/pc/ico/2011/ico_outlink.svg') no-repeat 100% 50%;
    background-size: 6px 9px;
    font-size: 12px;
    color: #5f0080;
    line-height: 22px
}
.wrap_gift.gift_detail .gift-item {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 25px 0;
    border-bottom: 1px solid #f4f4f4
}
.wrap_gift.gift_detail .gift-item .product-wrapper {
    display: flex;
    flex-direction: row;
    align-items: center;
    width: 584px
}
.wrap_gift.gift_detail .gift-item .product-wrapper .thumb {
    overflow: hidden;
    width: 60px;
    height: 78px;
    margin-right: 20px;
    background-color: #eee;
    background-size: cover;
    background-position: 50% 50%;
    background-repeat: no-repeat
}
.wrap_gift.gift_detail .gift-item .product-wrapper .product-content .product-name {
    display: inline-block;
    width: 350px;
    padding-bottom: 8px
}
.wrap_gift.gift_detail .gift-item .product-wrapper .product-content .product-name > span {
    display: block;
    overflow: hidden;
    white-space: nowrap;
    text-overflow: ellipsis
}
.wrap_gift.gift_detail .gift-item .product-wrapper .product-content .product-name .package-name {
    font-size: 16px;
    line-height: 24px;
    font-weight: 500;
    color: #333
}
.wrap_gift.gift_detail .gift-item .product-wrapper .product-content .product-name .option-name {
    padding-top: 6px;
    font-size: 14px;
    line-height: 20px;
    color: #999
}
.wrap_gift.gift_detail .gift-item .product-wrapper .product-content .info {
    overflow: hidden;
    font-size: 14px;
    line-height: 18px;
    color: #333
}
.wrap_gift.gift_detail .gift-item .product-wrapper .product-content .info dd {
    display: inline-block;
    margin-left: 6px
}
.wrap_gift.gift_detail .gift-item .product-wrapper .product-content .info dd:nth-child(2) {
    margin-left: 0
}
.wrap_gift.gift_detail .gift-item .product-wrapper .product-content .info dd .number {
    font-weight: 700
}
.wrap_gift.gift_detail .gift-item .product-wrapper .product-content .info dd.count:before {
    display: inline-block;
    margin: 3px 8px 0 0;
    width: 1px;
    height: 14px;
    background: #ddd;
    content: ""
}
.wrap_gift.gift_detail .gift-item .product-wrapper .product-content .info dd del {
    color: #999
}
.wrap_gift.gift_detail .gift-item .product-status {
    display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: center
}
.wrap_gift.gift_detail .gift-item .product-status .txt {
    display: inline-block;
    margin-right: 20px;
    font-size: 16px;
    font-weight: 500;
    color: #333
}
.section_giftview .order_cancel button {
    width: 200px;
    margin: 0 auto
}
.section_giftview .order_delivery .no_delivery {
    padding: 24px 0 !important;
    text-align: left !important
}
@keyframes shimmer {
    to {
        transform: translateX(100%)
    }
}
@-webkit-keyframes shimmer {
    to {
        transform: translateX(100%)
    }
}
.wrap_gift .cancel_result {
    display: flex;
    position: relative;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    height: 817px;
    background: #f4f4f4
}
.wrap_gift .cancel_result .inner_result {
    position: relative;
    width: 500px;
    padding: 30px;
    background: #fff;
    text-align: center
}
.wrap_gift .cancel_result strong {
    display: block;
    margin-bottom: 12px;
    font-size: 24px;
    line-height: 40px;
    font-weight: 400;
    color: #666
}
.wrap_gift .cancel_result strong img {
    display: block;
    width: 70px;
    height: 70px;
    margin: 20px auto 36px
}
.wrap_gift .cancel_result p {
    font-size: 14px;
    line-height: 20px;
    color: #666;
    text-align: center
}
.wrap_gift .cancel_result .link_home {
    display: block;
    margin-top: 20px;
    width: 100%;
    height: 48px;
    font-size: 16px;
    line-height: 48px;
    color: #fff;
    border: 0;
    background: #5f0080
}