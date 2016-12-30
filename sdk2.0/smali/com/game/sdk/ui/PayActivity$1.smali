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

    .line 147
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 149
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 204
    :goto_0
    :pswitch_0
    return-void

    .line 151
    :pswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 152
    .local v3, "result":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 153
    const-string v6, ";"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 157
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

    .line 156
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 158
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

    .line 159
    .local v0, "memo":Ljava/lang/String;
    const/16 v6, 0x2328

    if-ne v4, v6, :cond_1

    .line 162
    new-instance v2, Lcom/game/sdk/domain/PaymentCallbackInfo;

    invoke-direct {v2}, Lcom/game/sdk/domain/PaymentCallbackInfo;-><init>()V

    .line 163
    .local v2, "pci":Lcom/game/sdk/domain/PaymentCallbackInfo;
    iget-object v6, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->amount:F
    invoke-static {v6}, Lcom/game/sdk/ui/PayActivity;->access$2(Lcom/game/sdk/ui/PayActivity;)F

    move-result v6

    iput v6, v2, Lcom/game/sdk/domain/PaymentCallbackInfo;->money:F

    .line 164
    iput-object v0, v2, Lcom/game/sdk/domain/PaymentCallbackInfo;->msg:Ljava/lang/String;

    .line 166
    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->paymentListener:Lcom/game/sdk/domain/OnPaymentListener;

    invoke-interface {v6, v2}, Lcom/game/sdk/domain/OnPaymentListener;->paymentSuccess(Lcom/game/sdk/domain/PaymentCallbackInfo;)V

    .line 169
    iget-object v6, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v6, v6, Lcom/game/sdk/ui/PayActivity;->payResultDialog:Lcom/game/sdk/view/PayResultDialog;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v6, v6, Lcom/game/sdk/ui/PayActivity;->payResultDialog:Lcom/game/sdk/view/PayResultDialog;

    invoke-virtual {v6}, Lcom/game/sdk/view/PayResultDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 170
    iget-object v6, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v6, v6, Lcom/game/sdk/ui/PayActivity;->payResultDialog:Lcom/game/sdk/view/PayResultDialog;

    invoke-virtual {v6}, Lcom/game/sdk/view/PayResultDialog;->dismiss()V

    .line 172
    :cond_0
    iget-object v6, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-virtual {v6}, Lcom/game/sdk/ui/PayActivity;->finish()V

    .line 192
    .end local v0    # "memo":Ljava/lang/String;
    .end local v2    # "pci":Lcom/game/sdk/domain/PaymentCallbackInfo;
    .end local v4    # "resultStatus":I
    .end local v5    # "result_obj":[Ljava/lang/String;
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "result:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 174
    .restart local v0    # "memo":Ljava/lang/String;
    .restart local v4    # "resultStatus":I
    .restart local v5    # "result_obj":[Ljava/lang/String;
    :cond_1
    new-instance v1, Lcom/game/sdk/domain/PaymentErrorMsg;

    invoke-direct {v1}, Lcom/game/sdk/domain/PaymentErrorMsg;-><init>()V

    .line 175
    .local v1, "msg_e":Lcom/game/sdk/domain/PaymentErrorMsg;
    iput v4, v1, Lcom/game/sdk/domain/PaymentErrorMsg;->code:I

    .line 176
    iput-object v0, v1, Lcom/game/sdk/domain/PaymentErrorMsg;->msg:Ljava/lang/String;

    .line 177
    iget-object v6, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->amount:F
    invoke-static {v6}, Lcom/game/sdk/ui/PayActivity;->access$2(Lcom/game/sdk/ui/PayActivity;)F

    move-result v6

    iput v6, v1, Lcom/game/sdk/domain/PaymentErrorMsg;->money:F

    .line 180
    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->paymentListener:Lcom/game/sdk/domain/OnPaymentListener;

    invoke-interface {v6, v1}, Lcom/game/sdk/domain/OnPaymentListener;->paymentError(Lcom/game/sdk/domain/PaymentErrorMsg;)V

    goto :goto_1

    .line 184
    .end local v0    # "memo":Ljava/lang/String;
    .end local v1    # "msg_e":Lcom/game/sdk/domain/PaymentErrorMsg;
    .end local v4    # "resultStatus":I
    .end local v5    # "result_obj":[Ljava/lang/String;
    :cond_2
    new-instance v1, Lcom/game/sdk/domain/PaymentErrorMsg;

    invoke-direct {v1}, Lcom/game/sdk/domain/PaymentErrorMsg;-><init>()V

    .line 185
    .restart local v1    # "msg_e":Lcom/game/sdk/domain/PaymentErrorMsg;
    const v6, 0x54c5638

    iput v6, v1, Lcom/game/sdk/domain/PaymentErrorMsg;->code:I

    .line 186
    const-string v6, "\u65e0\u6cd5\u5224\u522b\u652f\u4ed8\u662f\u5426\u6210\u529f\uff01\u5177\u4f53\u8bf7\u67e5\u770b\u540e\u53f0\u6570\u636e"

    iput-object v6, v1, Lcom/game/sdk/domain/PaymentErrorMsg;->msg:Ljava/lang/String;

    .line 187
    iget-object v6, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->amount:F
    invoke-static {v6}, Lcom/game/sdk/ui/PayActivity;->access$2(Lcom/game/sdk/ui/PayActivity;)F

    move-result v6

    iput v6, v1, Lcom/game/sdk/domain/PaymentErrorMsg;->money:F

    .line 189
    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->paymentListener:Lcom/game/sdk/domain/OnPaymentListener;

    invoke-interface {v6, v1}, Lcom/game/sdk/domain/OnPaymentListener;->paymentError(Lcom/game/sdk/domain/PaymentErrorMsg;)V

    goto :goto_1

    .line 197
    .end local v1    # "msg_e":Lcom/game/sdk/domain/PaymentErrorMsg;
    .end local v3    # "result":Ljava/lang/String;
    :pswitch_2
    iget-object v6, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->platformMoneyTv:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/game/sdk/ui/PayActivity;->access$3(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/TextView;

    move-result-object v7

    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v6, v6, Lcom/game/sdk/domain/UserInfo;->ttb:Ljava/lang/String;

    invoke-static {v6}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v6, v6, Lcom/game/sdk/domain/UserInfo;->ttb:Ljava/lang/String;

    :goto_2
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v6, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->gameMoneyTv:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/game/sdk/ui/PayActivity;->access$4(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/TextView;

    move-result-object v7

    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v6, v6, Lcom/game/sdk/domain/UserInfo;->gttb:Ljava/lang/String;

    invoke-static {v6}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v6, v6, Lcom/game/sdk/domain/UserInfo;->gttb:Ljava/lang/String;

    :goto_3
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 197
    :cond_3
    const-string v6, "0"

    goto :goto_2

    .line 198
    :cond_4
    const-string v6, "0"

    goto :goto_3

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
