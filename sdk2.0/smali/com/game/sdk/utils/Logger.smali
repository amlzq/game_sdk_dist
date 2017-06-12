.class public Lcom/game/sdk/utils/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static final D:I = 0x1

.field private static final DEBUG:Z = true

.field private static final E:I = 0x4

.field private static final I:I = 0x2

.field private static final LEVEL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "game_sdk"

.field private static final V:I = 0x0

.field private static final W:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static msg(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 25
    sget v0, Lcom/game/sdk/TTWAppService;->debug:I

    if-nez v0, :cond_0

    .line 47
    :goto_0
    return-void

    .line 28
    :cond_0
    const/4 v0, 0x2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 30
    :pswitch_0
    const-string v0, "game_sdk"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 33
    :pswitch_1
    const-string v0, "game_sdk"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 36
    :pswitch_2
    const-string v0, "game_sdk"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 39
    :pswitch_3
    const-string v0, "game_sdk"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 42
    :pswitch_4
    const-string v0, "game_sdk"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 28
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
