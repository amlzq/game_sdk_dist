.class Lcom/game/sdk/ui/PayActivity$1;
.super Landroid/os/Handler;
.source "PayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/PayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/PayActivity;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/PayActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    .line 160
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 162
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 249
    :goto_0
    :pswitch_0
    return-void

    .line 164
    :pswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 165
    .local v3, "result":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 166
    const-string v6, ";"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 170
    .local v5, "result_obj":[Ljava/lang/String;
    aget-object v6, v5, v9

    aget-object v7, v5, v9

    const-string v8, "{"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    aget-object v8, v5, v9

    const-string v9, "}"

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 169
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 171
    .local v4, "resultStatus":I
    aget-object v6, v5, v10

    aget-object v7, v5, v10

    const-string v8, "{"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    aget-object v8, v5, v10

    const-string v9, "}"

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "memo":Ljava/lang/String;
    const/16 v6, 0x2328

    if-ne v4, v6, :cond_2

    .line 175
    new-instance v2, Lcom/game/sdk/domain/PaymentCallbackInfo;

    invoke-direct {v2}, Lcom/game/sdk/domain/PaymentCallbackInfo;-><init>()V

    .line 176
    .local v2, "pci":Lcom/game/sdk/domain/PaymentCallbackInfo;
    iget-object v6, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->amount:F
    invoke-static {v6}, Lcom/game/sdk/ui/PayActivity;->access$2(Lcom/game/sdk/ui/PayActivity;)F

    move-result v6

    iput v6, v2, Lcom/game/sdk/domain/PaymentCallbackInfo;->money:F

    .line 177
    iput-object v0, v2, Lcom/game/sdk/domain/PaymentCallbackInfo;->msg:Ljava/lang/String;

    .line 180
    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->paymentListener:Lcom/game/sdk/domain/OnPaymentListener;

    if-eqz v6, :cond_0

    .line 181
    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->paymentListener:Lcom/game/sdk/domain/OnPaymentListener;

    invoke-interface {v6, v2}, Lcom/game/sdk/domain/OnPaymentListener;->paymentSuccess(Lcom/game/sdk/domain/PaymentCallbackInfo;)V

    .line 184
    :cond_0
    iget-object v6, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-virtual {v6}, Lcom/game/sdk/ui/PayActivity;->finish()V

    .line 222
    .end local v0    # "memo":Ljava/lang/String;
    .end local v2    # "pci":Lcom/game/sdk/domain/PaymentCallbackInfo;
    .end local v4    # "resultStatus":I
    .end local v5    # "result_obj":[Ljava/lang/String;
    :cond_1
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "result:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    goto :goto_0

    .line 187
    .restart local v0    # "memo":Ljava/lang/String;
    .restart local v4    # "resultStatus":I
    .restart local v5    # "result_obj":[Ljava/lang/String;
    :cond_2
    new-instance v1, Lcom/game/sdk/domain/PaymentErrorMsg;

    invoke-direct {v1}, Lcom/game/sdk/domain/PaymentErrorMsg;-><init>()V

    .line 188
    .local v1, "msg_e":Lcom/game/sdk/domain/PaymentErrorMsg;
    iput v4, v1, Lcom/game/sdk/domain/PaymentErrorMsg;->code:I

    .line 189
    iput-object v0, v1, Lcom/game/sdk/domain/PaymentErrorMsg;->msg:Ljava/lang/String;

    .line 190
    iget-object v6, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->amount:F
    invoke-static {v6}, Lcom/game/sdk/ui/PayActivity;->access$2(Lcom/game/sdk/ui/PayActivity;)F

    move-result v6

    iput v6, v1, Lcom/game/sdk/domain/PaymentErrorMsg;->money:F

    .line 193
    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->paymentListener:Lcom/game/sdk/domain/OnPaymentListener;

    if-eqz v6, :cond_3

    .line 194
    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->paymentListener:Lcom/game/sdk/domain/OnPaymentListener;

    invoke-interface {v6, v1}, Lcom/game/sdk/domain/OnPaymentListener;->paymentError(Lcom/game/sdk/domain/PaymentErrorMsg;)V

    .line 197
    :cond_3
    iget-object v6, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v6}, Lcom/game/sdk/utils/SystemUtil;->isValidContext(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 198
    iget-object v6, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v6, v6, Lcom/game/sdk/ui/PayActivity;->payResultDialog:Lcom/game/sdk/view/PayResultDialog;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v6, v6, Lcom/game/sdk/ui/PayActivity;->payResultDialog:Lcom/game/sdk/view/PayResultDialog;

    invoke-virtual {v6}, Lcom/game/sdk/view/PayResultDialog;->isShowing()Z

    move-result v6

    if-nez v6, :cond_1

    .line 199
    iget-object v6, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v6, v6, Lcom/game/sdk/ui/PayActivity;->payResultDialog:Lcom/game/sdk/view/PayResultDialog;

    invoke-virtual {v6}, Lcom/game/sdk/view/PayResultDialog;->show()V

    goto :goto_1

    .line 205
    .end local v0    # "memo":Ljava/lang/String;
    .end local v1    # "msg_e":Lcom/game/sdk/domain/PaymentErrorMsg;
    .end local v4    # "resultStatus":I
    .end local v5    # "result_obj":[Ljava/lang/String;
    :cond_4
    new-instance v1, Lcom/game/sdk/domain/PaymentErrorMsg;

    invoke-direct {v1}, Lcom/game/sdk/domain/PaymentErrorMsg;-><init>()V

    .line 206
    .restart local v1    # "msg_e":Lcom/game/sdk/domain/PaymentErrorMsg;
    const v6, 0x54c5638

    iput v6, v1, Lcom/game/sdk/domain/PaymentErrorMsg;->code:I

    .line 207
    const-string v6, "\u65e0\u6cd5\u5224\u522b\u652f\u4ed8\u662f\u5426\u6210\u529f\uff01\u5177\u4f53\u8bf7\u67e5\u770b\u540e\u53f0\u6570\u636e"

    iput-object v6, v1, Lcom/game/sdk/domain/PaymentErrorMsg;->msg:Ljava/lang/String;

    .line 208
    iget-object v6, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->amount:F
    invoke-static {v6}, Lcom/game/sdk/ui/PayActivity;->access$2(Lcom/game/sdk/ui/PayActivity;)F

    move-result v6

    iput v6, v1, Lcom/game/sdk/domain/PaymentErrorMsg;->money:F

    .line 211
    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->paymentListener:Lcom/game/sdk/domain/OnPaymentListener;

    if-eqz v6, :cond_5

    .line 212
    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->paymentListener:Lcom/game/sdk/domain/OnPaymentListener;

    invoke-interface {v6, v1}, Lcom/game/sdk/domain/OnPaymentListener;->paymentError(Lcom/game/sdk/domain/PaymentErrorMsg;)V

    .line 215
    :cond_5
    iget-object v6, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v6}, Lcom/game/sdk/utils/SystemUtil;->isValidContext(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 216
    iget-object v6, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v6, v6, Lcom/game/sdk/ui/PayActivity;->payResultDialog:Lcom/game/sdk/view/PayResultDialog;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v6, v6, Lcom/game/sdk/ui/PayActivity;->payResultDialog:Lcom/game/sdk/view/PayResultDialog;

    invoke-virtual {v6}, Lcom/game/sdk/view/PayResultDialog;->isShowing()Z

    move-result v6

    if-nez v6, :cond_1

    .line 217
    iget-object v6, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v6, v6, Lcom/game/sdk/ui/PayActivity;->payResultDialog:Lcom/game/sdk/view/PayResultDialog;

    invoke-virtual {v6}, Lcom/game/sdk/view/PayResultDialog;->show()V

    goto/16 :goto_1

    .line 228
    .end local v1    # "msg_e":Lcom/game/sdk/domain/PaymentErrorMsg;
    .end local v3    # "result":Ljava/lang/String;
    :pswitch_2
    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v6, v6, Lcom/game/sdk/domain/UserInfo;->gttb:Ljava/lang/String;

    invoke-static {v6}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v6, v6, Lcom/game/sdk/domain/UserInfo;->gttb:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    cmpl-float v6, v6, v8

    if-lez v6, :cond_6

    .line 229
    iget-object v6, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->gameMoneyTv:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/game/sdk/ui/PayActivity;->access$3(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/TextView;

    move-result-object v6

    sget-object v7, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v7, v7, Lcom/game/sdk/domain/UserInfo;->gttb:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    :goto_2
    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v6, v6, Lcom/game/sdk/domain/UserInfo;->ttb:Ljava/lang/String;

    invoke-static {v6}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v6, v6, Lcom/game/sdk/domain/UserInfo;->ttb:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    cmpl-float v6, v6, v8

    if-lez v6, :cond_7

    .line 236
    iget-object v6, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->platformMoneyTv:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/game/sdk/ui/PayActivity;->access$5(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/TextView;

    move-result-object v6

    sget-object v7, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v7, v7, Lcom/game/sdk/domain/UserInfo;->ttb:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    :goto_3
    iget-object v6, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->couponCountTv:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/game/sdk/ui/PayActivity;->access$7(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/TextView;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    sget v8, Lcom/game/sdk/domain/GoagalInfo;->couponCount:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 231
    :cond_6
    iget-object v6, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->gameMoneyTv:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/game/sdk/ui/PayActivity;->access$3(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/TextView;

    move-result-object v6

    const-string v7, "0"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v6, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->gameCoinCheckBox:Landroid/widget/CheckBox;
    invoke-static {v6}, Lcom/game/sdk/ui/PayActivity;->access$4(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/CheckBox;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/CheckBox;->setClickable(Z)V

    goto :goto_2

    .line 238
    :cond_7
    iget-object v6, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->platformMoneyTv:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/game/sdk/ui/PayActivity;->access$5(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/TextView;

    move-result-object v6

    const-string v7, "0"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v6, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->platformCoinCheckBox:Landroid/widget/CheckBox;
    invoke-static {v6}, Lcom/game/sdk/ui/PayActivity;->access$6(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/CheckBox;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/CheckBox;->setClickable(Z)V

    goto :goto_3

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
