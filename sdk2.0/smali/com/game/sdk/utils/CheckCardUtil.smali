.class public Lcom/game/sdk/utils/CheckCardUtil;
.super Ljava/lang/Object;
.source "CheckCardUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkDianXing(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "c"    # Ljava/lang/String;
    .param p2, "p"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 62
    const/16 v1, 0x13

    const/16 v2, 0x12

    invoke-static {v1, v2, p1, p2}, Lcom/game/sdk/utils/CheckCardUtil;->checkLen(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    const-string v1, "\u7535\u4fe1\u5145\u503c\u5361\u5361\u53f7\u957f\u5ea6\u4e3a19\u4f4d\uff0c\u5bc6\u7801\u957f\u5ea6\u4e3a18\u4f4d\uff0c\u8bf7\u68c0\u67e5\uff01"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 64
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 67
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static checkJiuYou(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "c"    # Ljava/lang/String;
    .param p2, "p"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 152
    const/16 v1, 0xd

    const/16 v2, 0xa

    invoke-static {v1, v2, p1, p2}, Lcom/game/sdk/utils/CheckCardUtil;->checkLen(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    const-string v1, "\u4e45\u6e38\u5145\u503c\u5361\uff0c\u5361\u53f713\u4f4d\u3001\u5bc6\u780110\u4f4d\u7684\u963f\u62c9\u4f2f\u6570\u5b57   \u8bf7\u68c0\u67e5\uff01"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 154
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 157
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static checkJunWang(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "c"    # Ljava/lang/String;
    .param p2, "p"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x10

    const/4 v0, 0x0

    .line 79
    invoke-static {v1, v1, p1, p2}, Lcom/game/sdk/utils/CheckCardUtil;->checkLen(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    const-string v1, "\u9a8f\u7f51\u4e00\u5361\u901a\u5145\u503c\u5361\u5361\u53f7\u957f\u5ea6\u4e3a16\u4f4d\uff0c\u5bc6\u7801\u957f\u5ea6\u4e3a16\u4f4d\uff0c\u8bf7\u68c0\u67e5\uff01"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 81
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 84
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static checkLen(IILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "length_c"    # I
    .param p1, "length_p"    # I
    .param p2, "c"    # Ljava/lang/String;
    .param p3, "p"    # Ljava/lang/String;

    .prologue
    .line 279
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 280
    const/4 v0, 0x0

    .line 282
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static checkLianTong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "c"    # Ljava/lang/String;
    .param p2, "p"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 45
    const/16 v1, 0xf

    const/16 v2, 0x13

    invoke-static {v1, v2, p1, p2}, Lcom/game/sdk/utils/CheckCardUtil;->checkLen(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    const-string v1, "\u8054\u901a\u5145\u503c\u5361\u5361\u53f7\u957f\u5ea6\u4e3a15\u4f4d\uff0c\u5bc6\u7801\u957f\u5ea6\u4e3a19\u4f4d\uff0c\u8bf7\u68c0\u67e5\uff01"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 47
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 50
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static checkQbi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "c"    # Ljava/lang/String;
    .param p2, "p"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 134
    const/16 v1, 0x9

    const/16 v2, 0xc

    invoke-static {v1, v2, p1, p2}, Lcom/game/sdk/utils/CheckCardUtil;->checkLen(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    const-string v1, "Q\u5e01\u5145\u503c\u5361\uff0c\u5361\u53f79\u4f4d\u963f\u62c9\u4f2f\u6570\u5b57\uff0c\u5bc6\u780112\u4f4d\u963f\u62c9\u4f2f\u6570\u5b57 \u8bf7\u68c0\u67e5\uff01"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 136
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 139
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static checkShenDa(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "c"    # Ljava/lang/String;
    .param p2, "p"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xf

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    .line 98
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    .line 99
    :cond_1
    const-string v1, "\u76db\u5927\u5361\u53f715\u4f4d\u621616\u4f4d\u7684\u6570\u5b57\u5b57\u6bcd\uff0c\u5bc6\u78018\u4f4d\u62169\u4f4d\u7684\u963f\u62c9\u4f2f\u6570\u5b57 \u8bf7\u68c0\u67e5\uff01"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 100
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 103
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static checkSoHu(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "c"    # Ljava/lang/String;
    .param p2, "p"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 203
    const/16 v1, 0x14

    const/16 v2, 0xc

    invoke-static {v1, v2, p1, p2}, Lcom/game/sdk/utils/CheckCardUtil;->checkLen(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    const-string v1, "\u641c\u72d0\u5145\u503c\u5361\uff0c \u5361\u53f720\u4f4d\u3001\u5bc6\u780112\u4f4d\u7684\u963f\u62c9\u4f2f\u6570\u5b57  \u8bf7\u68c0\u67e5\uff01"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 205
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 208
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static checkTianHong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "c"    # Ljava/lang/String;
    .param p2, "p"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0xa

    const/4 v0, 0x0

    .line 255
    const/16 v1, 0xc

    const/16 v2, 0xf

    invoke-static {v1, v2, p1, p2}, Lcom/game/sdk/utils/CheckCardUtil;->checkLen(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    const-string v1, "\u5929\u5b8f\u5361\u53f7\u4e3a12\u4f4d\uff0c\u524d2\u4f4d\u662f\u5927\u5199\u6216\u5c0f\u5199\u82f1\u6587\u5b57\u6bcd\uff0c\u540e10\u4f4d\u662f\u6570\u5b57\uff1b\u5bc6\u780115\u4f4d\u662f\u7eaf\u6570\u5b57  \u8bf7\u68c0\u67e5\uff01"

    .line 256
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 258
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 267
    :goto_0
    return v0

    .line 261
    :cond_0
    invoke-static {v3, v3, p1, p2}, Lcom/game/sdk/utils/CheckCardUtil;->checkLen(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 263
    const-string v1, "\u5929\u5b8f\u5361\u53f7\u4e3a10\u4f4d\uff0c\u524d2\u4f4d\u662f\u5927\u5199\u6216\u5c0f\u5199\u82f1\u6587\u5b57\u6bcd\uff0c\u540e8\u4f4d\u662f\u6570\u5b57\uff1b\u5bc6\u780110\u4f4d\u662f\u7eaf\u6570\u5b57 \u8bf7\u68c0\u67e5\uff01 "

    .line 262
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 264
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 267
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static checkTianXia(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "c"    # Ljava/lang/String;
    .param p2, "p"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 237
    const/16 v1, 0xf

    const/16 v2, 0x8

    invoke-static {v1, v2, p1, p2}, Lcom/game/sdk/utils/CheckCardUtil;->checkLen(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    const-string v1, "\u5929\u4e0b\u901a\uff0c\u5361\u53f715\u4f4d\u3001\u5bc6\u78018\u4f4d\u7684\u963f\u62c9\u4f2f\u6570\u5b57  \u8bf7\u68c0\u67e5\uff01"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 239
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 242
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static checkWangMei(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "c"    # Ljava/lang/String;
    .param p2, "p"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 186
    const/16 v1, 0xa

    const/16 v2, 0xf

    invoke-static {v1, v2, p1, p2}, Lcom/game/sdk/utils/CheckCardUtil;->checkLen(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    const-string v1, "\u5b8c\u7f8e\u6e38\u620f\u5145\u503c\u5361\uff0c\u5361\u53f710\u4f4d\u3001\u5bc6\u780115\u4f4d\u7684\u963f\u62c9\u4f2f\u6570\u5b57 \u8bf7\u68c0\u67e5\uff01"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 188
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 191
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static checkWangYi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "c"    # Ljava/lang/String;
    .param p2, "p"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 169
    const/16 v1, 0xd

    const/16 v2, 0x9

    invoke-static {v1, v2, p1, p2}, Lcom/game/sdk/utils/CheckCardUtil;->checkLen(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    const-string v1, "\u7f51\u6613\u6e38\u620f\u5145\u503c\u5361\uff0c\u5361\u53f713\u4f4d\u3001\u5bc6\u78019\u4f4d\u7684\u963f\u62c9\u4f2f\u6570\u5b57 \u8bf7\u68c0\u67e5\uff01"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 171
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 174
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static checkYidong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "c"    # Ljava/lang/String;
    .param p2, "p"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x11

    const/4 v1, 0x0

    .line 18
    const-string v0, "^[\\d]*$"

    .line 19
    .local v0, "match":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 20
    const-string v2, "\u5361\u53f7\u683c\u5f0f\u4e0d\u6b63\u786e"

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 33
    :goto_0
    return v1

    .line 23
    :cond_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 24
    const-string v2, "\u5bc6\u7801\u683c\u5f0f\u4e0d\u6b63\u786e"

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 27
    :cond_1
    const/16 v2, 0x12

    invoke-static {v4, v2, p1, p2}, Lcom/game/sdk/utils/CheckCardUtil;->checkLen(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xa

    const/16 v3, 0x8

    invoke-static {v2, v3, p1, p2}, Lcom/game/sdk/utils/CheckCardUtil;->checkLen(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x10

    invoke-static {v2, v4, p1, p2}, Lcom/game/sdk/utils/CheckCardUtil;->checkLen(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 28
    if-eqz v2, :cond_2

    .line 29
    const-string v2, "\u79fb\u52a8\u5145\u503c\u5361\u53f7\u6216\u8005\u5bc6\u7801\u957f\u5ea6\u4e0d\u5339\u914d"

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 30
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 33
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static checkZhenTu(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "c"    # Ljava/lang/String;
    .param p2, "p"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 116
    const/16 v1, 0x10

    const/16 v2, 0x8

    invoke-static {v1, v2, p1, p2}, Lcom/game/sdk/utils/CheckCardUtil;->checkLen(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    const-string v1, "\u5f81\u9014\u6e38\u620f\u5145\u503c\u5361\uff0c\u5361\u53f716\u4f4d\u963f\u62c9\u4f2f\u6570\u5b57\uff0c\u5bc6\u78018\u4f4d\u963f\u62c9\u4f2f\u6570\u5b57 \u8bf7\u68c0\u67e5\uff01"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 118
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 121
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static checkZhongYou(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "c"    # Ljava/lang/String;
    .param p2, "p"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0xf

    const/4 v0, 0x0

    .line 220
    invoke-static {v1, v1, p1, p2}, Lcom/game/sdk/utils/CheckCardUtil;->checkLen(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    const-string v1, "\u7eb5\u6e38\u4e00\u5361\u901a\uff0c\u5361\u53f715\u4f4d\u3001\u5bc6\u780115\u4f4d\u7684\u963f\u62c9\u4f2f\u6570\u5b57  \u8bf7\u68c0\u67e5\uff01"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 222
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 225
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
