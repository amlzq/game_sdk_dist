.class Lcom/game/sdk/ui/ChargeActivity$1;
.super Landroid/os/Handler;
.source "ChargeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/ChargeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/ChargeActivity;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/ChargeActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    .line 155
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

    .line 157
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 160
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 161
    .local v2, "result":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 162
    const-string v5, ";"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 166
    .local v4, "result_obj":[Ljava/lang/String;
    aget-object v5, v4, v9

    aget-object v6, v4, v9

    const-string v7, "{"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    aget-object v7, v4, v9

    const-string v8, "}"

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 165
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 167
    .local v3, "resultStatus":I
    aget-object v5, v4, v10

    aget-object v6, v4, v10

    const-string v7, "{"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    aget-object v7, v4, v10

    const-string v8, "}"

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "memo":Ljava/lang/String;
    const/16 v5, 0x2328

    if-ne v3, v5, :cond_1

    .line 170
    iget-object v5, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iput-boolean v10, v5, Lcom/game/sdk/ui/ChargeActivity;->ischarge:Z

    .line 172
    iget-object v5, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    const-string v6, "\u652f\u4ed8\u6210\u529f"

    invoke-static {v5, v6}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 176
    iget-object v5, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    invoke-virtual {v5}, Lcom/game/sdk/ui/ChargeActivity;->finish()V

    .line 188
    .end local v1    # "memo":Ljava/lang/String;
    .end local v3    # "resultStatus":I
    .end local v4    # "result_obj":[Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "result:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    goto :goto_0

    .line 179
    .restart local v1    # "memo":Ljava/lang/String;
    .restart local v3    # "resultStatus":I
    .restart local v4    # "result_obj":[Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iput-boolean v9, v5, Lcom/game/sdk/ui/ChargeActivity;->ischarge:Z

    .line 180
    iget-object v5, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    invoke-static {v5, v1}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 184
    .end local v1    # "memo":Ljava/lang/String;
    .end local v3    # "resultStatus":I
    .end local v4    # "result_obj":[Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iput-boolean v9, v5, Lcom/game/sdk/ui/ChargeActivity;->ischarge:Z

    .line 185
    iget-object v5, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    const-string v6, "\u65e0\u6cd5\u5224\u522b\u652f\u4ed8\u662f\u5426\u6210\u529f\uff01\u5177\u4f53\u8bf7\u67e5\u770b\u540e\u53f0\u6570\u636e"

    invoke-static {v5, v6}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 191
    .end local v2    # "result":Ljava/lang/String;
    :pswitch_1
    iget-object v5, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iget-object v5, v5, Lcom/game/sdk/ui/ChargeActivity;->chargeMoneys:[F

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iget-object v5, v5, Lcom/game/sdk/ui/ChargeActivity;->chargeMoneys:[F

    array-length v5, v5

    if-lez v5, :cond_3

    .line 192
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v5, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iget-object v5, v5, Lcom/game/sdk/ui/ChargeActivity;->tvs:[Landroid/widget/TextView;

    array-length v5, v5

    if-lt v0, v5, :cond_4

    .line 197
    .end local v0    # "i":I
    :cond_3
    iget-object v5, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iget-object v5, v5, Lcom/game/sdk/ui/ChargeActivity;->realMoneyTvs:[Landroid/widget/TextView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iget-object v5, v5, Lcom/game/sdk/ui/ChargeActivity;->realMoneyTvs:[Landroid/widget/TextView;

    array-length v5, v5

    if-lez v5, :cond_0

    .line 198
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v5, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iget-object v5, v5, Lcom/game/sdk/ui/ChargeActivity;->realMoneyTvs:[Landroid/widget/TextView;

    array-length v5, v5

    if-ge v0, v5, :cond_0

    .line 199
    iget-object v5, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iget-object v5, v5, Lcom/game/sdk/ui/ChargeActivity;->realMoneyTvs:[Landroid/widget/TextView;

    aget-object v5, v5, v0

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    iget-object v5, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iget-object v5, v5, Lcom/game/sdk/ui/ChargeActivity;->realMoneyTvs:[Landroid/widget/TextView;

    aget-object v5, v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    const-string v8, "charge_to_text"

    invoke-virtual {v7, v8}, Lcom/game/sdk/ui/ChargeActivity;->findStringByResId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iget-object v7, v7, Lcom/game/sdk/ui/ChargeActivity;->realMoneys:[F

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 201
    iget-object v7, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    const-string v8, "charge_unit_text"

    invoke-virtual {v7, v8}, Lcom/game/sdk/ui/ChargeActivity;->findStringByResId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 200
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 193
    :cond_4
    iget-object v5, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iget-object v5, v5, Lcom/game/sdk/ui/ChargeActivity;->tvs:[Landroid/widget/TextView;

    aget-object v5, v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iget-object v7, v7, Lcom/game/sdk/ui/ChargeActivity;->chargeMoneys:[F

    aget v7, v7, v0

    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    const-string v8, "charge_unit_text"

    invoke-virtual {v7, v8}, Lcom/game/sdk/ui/ChargeActivity;->findStringByResId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
