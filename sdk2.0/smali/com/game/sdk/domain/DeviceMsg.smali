.class public Lcom/game/sdk/domain/DeviceMsg;
.super Ljava/lang/Object;
.source "DeviceMsg.java"


# instance fields
.field public device:I

.field public deviceinfo:Ljava/lang/String;

.field public imeil:Ljava/lang/String;

.field public userip:Ljava/lang/String;

.field public userua:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "aa"

    iput-object v0, p0, Lcom/game/sdk/domain/DeviceMsg;->userua:Ljava/lang/String;

    .line 16
    const/4 v0, 0x2

    iput v0, p0, Lcom/game/sdk/domain/DeviceMsg;->device:I

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "imeil"    # Ljava/lang/String;
    .param p2, "deviceinfo"    # Ljava/lang/String;
    .param p3, "device"    # I
    .param p4, "userip"    # Ljava/lang/String;
    .param p5, "userua"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "aa"

    iput-object v0, p0, Lcom/game/sdk/domain/DeviceMsg;->userua:Ljava/lang/String;

    .line 16
    const/4 v0, 0x2

    iput v0, p0, Lcom/game/sdk/domain/DeviceMsg;->device:I

    .line 32
    iput-object p1, p0, Lcom/game/sdk/domain/DeviceMsg;->imeil:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/game/sdk/domain/DeviceMsg;->deviceinfo:Ljava/lang/String;

    .line 34
    iput p3, p0, Lcom/game/sdk/domain/DeviceMsg;->device:I

    .line 35
    iput-object p4, p0, Lcom/game/sdk/domain/DeviceMsg;->userip:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Lcom/game/sdk/domain/DeviceMsg;->userua:Ljava/lang/String;

    .line 37
    return-void
.end method
