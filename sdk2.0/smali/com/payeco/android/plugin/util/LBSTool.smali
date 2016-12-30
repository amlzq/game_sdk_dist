.class public Lcom/payeco/android/plugin/util/LBSTool;
.super Ljava/lang/Object;


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mLocation:Lcom/payeco/android/plugin/a/a;


# instance fields
.field private bridge:Lcom/payeco/android/plugin/bridge/JsBridge;

.field private handler:Landroid/os/Handler;

.field private isGet:Z

.field private mGPSListener:Lcom/payeco/android/plugin/util/i;

.field private mLBSThread:Lcom/payeco/android/plugin/util/j;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLooper:Landroid/os/Looper;

.field private mNetworkListner:Lcom/payeco/android/plugin/util/i;

.field private number:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/payeco/android/plugin/util/LBSTool;->mContext:Landroid/content/Context;

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/payeco/android/plugin/util/LBSTool;->mLocationManager:Landroid/location/LocationManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/payeco/android/plugin/bridge/JsBridge;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/payeco/android/plugin/util/LBSTool;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/payeco/android/plugin/util/LBSTool;->bridge:Lcom/payeco/android/plugin/bridge/JsBridge;

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/payeco/android/plugin/util/LBSTool;->mLocationManager:Landroid/location/LocationManager;

    new-instance v0, Lcom/payeco/android/plugin/util/g;

    invoke-direct {v0, p0, p3}, Lcom/payeco/android/plugin/util/g;-><init>(Lcom/payeco/android/plugin/util/LBSTool;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/payeco/android/plugin/util/LBSTool;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$0(Lcom/payeco/android/plugin/util/LBSTool;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/payeco/android/plugin/util/LBSTool;->mLooper:Landroid/os/Looper;

    return-void
.end method

.method static synthetic access$1(Lcom/payeco/android/plugin/util/LBSTool;)Lcom/payeco/android/plugin/util/j;
    .locals 1

    iget-object v0, p0, Lcom/payeco/android/plugin/util/LBSTool;->mLBSThread:Lcom/payeco/android/plugin/util/j;

    return-object v0
.end method

.method static synthetic access$2(Lcom/payeco/android/plugin/a/a;)V
    .locals 0

    sput-object p0, Lcom/payeco/android/plugin/util/LBSTool;->mLocation:Lcom/payeco/android/plugin/a/a;

    return-void
.end method

.method static synthetic access$3()Lcom/payeco/android/plugin/a/a;
    .locals 1

    sget-object v0, Lcom/payeco/android/plugin/util/LBSTool;->mLocation:Lcom/payeco/android/plugin/a/a;

    return-object v0
.end method

.method static synthetic access$4()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/payeco/android/plugin/util/LBSTool;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5(Lcom/payeco/android/plugin/util/LBSTool;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/payeco/android/plugin/util/LBSTool;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6(Lcom/payeco/android/plugin/util/LBSTool;)Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/payeco/android/plugin/util/LBSTool;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$7(Lcom/payeco/android/plugin/util/LBSTool;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/payeco/android/plugin/util/LBSTool;->isGet:Z

    return-void
.end method

.method static synthetic access$8(Lcom/payeco/android/plugin/util/LBSTool;)Lcom/payeco/android/plugin/bridge/JsBridge;
    .locals 1

    iget-object v0, p0, Lcom/payeco/android/plugin/util/LBSTool;->bridge:Lcom/payeco/android/plugin/bridge/JsBridge;

    return-object v0
.end method

.method static synthetic access$9(Lcom/payeco/android/plugin/util/LBSTool;)V
    .locals 0

    invoke-direct {p0}, Lcom/payeco/android/plugin/util/LBSTool;->otherMethod()V

    return-void
.end method

.method public static getLbsLocal(Landroid/content/Context;)Lcom/payeco/android/plugin/a/a;
    .locals 6

    const-string v0, "payecoLat"

    invoke-static {p0, v0}, Lcom/payeco/android/plugin/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "payecoLon"

    invoke-static {p0, v0}, Lcom/payeco/android/plugin/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    new-instance v0, Lcom/payeco/android/plugin/a/a;

    invoke-direct {v0}, Lcom/payeco/android/plugin/a/a;-><init>()V

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/payeco/android/plugin/a/a;->a:D

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/payeco/android/plugin/a/a;->b:D

    new-instance v1, Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/payeco/android/plugin/a/a;->b:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Lcom/payeco/android/plugin/a/a;->a:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/payeco/android/plugin/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/payeco/android/plugin/util/LBSTool;->setLbsToCookieStore(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLocation()Lcom/payeco/android/plugin/a/a;
    .locals 1

    sget-object v0, Lcom/payeco/android/plugin/util/LBSTool;->mLocation:Lcom/payeco/android/plugin/a/a;

    return-object v0
.end method

.method private isGPSEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/payeco/android/plugin/util/LBSTool;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLBSEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/payeco/android/plugin/util/LBSTool;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private otherMethod()V
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setBearingRequired(Z)V

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setCostAllowed(Z)V

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setPowerRequirement(I)V

    iget-object v1, p0, Lcom/payeco/android/plugin/util/LBSTool;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, v0, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "gps"

    :cond_0
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/payeco/android/plugin/util/LBSTool;->isGPSEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "gps"

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    iget v2, p0, Lcom/payeco/android/plugin/util/LBSTool;->number:I

    const/16 v3, 0x3e8

    if-lt v2, v3, :cond_4

    :cond_2
    if-eqz v1, :cond_3

    iget-boolean v0, p0, Lcom/payeco/android/plugin/util/LBSTool;->isGet:Z

    if-nez v0, :cond_3

    new-instance v0, Lcom/payeco/android/plugin/a/a;

    invoke-direct {v0}, Lcom/payeco/android/plugin/a/a;-><init>()V

    sput-object v0, Lcom/payeco/android/plugin/util/LBSTool;->mLocation:Lcom/payeco/android/plugin/a/a;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/payeco/android/plugin/a/a;->b:D

    sget-object v0, Lcom/payeco/android/plugin/util/LBSTool;->mLocation:Lcom/payeco/android/plugin/a/a;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/payeco/android/plugin/a/a;->a:D

    sget-object v0, Lcom/payeco/android/plugin/util/LBSTool;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/payeco/android/plugin/util/LBSTool;->mLocation:Lcom/payeco/android/plugin/a/a;

    iget-wide v2, v1, Lcom/payeco/android/plugin/a/a;->b:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/payeco/android/plugin/util/LBSTool;->mLocation:Lcom/payeco/android/plugin/a/a;

    iget-wide v2, v1, Lcom/payeco/android/plugin/a/a;->a:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payeco/android/plugin/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payeco/android/plugin/util/LBSTool;->setLbsToCookieStore(Ljava/lang/String;)V

    sget-object v0, Lcom/payeco/android/plugin/util/LBSTool;->mLocation:Lcom/payeco/android/plugin/a/a;

    invoke-virtual {p0, v0}, Lcom/payeco/android/plugin/util/LBSTool;->saveLbsToLocal(Lcom/payeco/android/plugin/a/a;)V

    :cond_3
    return-void

    :cond_4
    iget-object v1, p0, Lcom/payeco/android/plugin/util/LBSTool;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    iget v2, p0, Lcom/payeco/android/plugin/util/LBSTool;->number:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/payeco/android/plugin/util/LBSTool;->number:I

    const-wide/16 v2, 0xa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setLbsToCookieStore(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    invoke-static {}, Lcom/payeco/android/plugin/h;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PPI_location="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    return-void
.end method


# virtual methods
.method public registerLocationListener()V
    .locals 8

    const/16 v0, 0x3e8

    const/high16 v4, 0x3f800000    # 1.0f

    sget-object v1, Lcom/payeco/android/plugin/util/LBSTool;->mContext:Landroid/content/Context;

    const-string v1, "LbsTime"

    invoke-static {v1}, Lcom/payeco/android/plugin/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v7, v0

    :goto_0
    invoke-direct {p0}, Lcom/payeco/android/plugin/util/LBSTool;->isLBSEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/payeco/android/plugin/util/i;

    invoke-direct {v0, p0}, Lcom/payeco/android/plugin/util/i;-><init>(Lcom/payeco/android/plugin/util/LBSTool;)V

    iput-object v0, p0, Lcom/payeco/android/plugin/util/LBSTool;->mNetworkListner:Lcom/payeco/android/plugin/util/i;

    iget-object v0, p0, Lcom/payeco/android/plugin/util/LBSTool;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    int-to-long v2, v7

    iget-object v5, p0, Lcom/payeco/android/plugin/util/LBSTool;->mNetworkListner:Lcom/payeco/android/plugin/util/i;

    iget-object v6, p0, Lcom/payeco/android/plugin/util/LBSTool;->mLooper:Landroid/os/Looper;

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    :cond_0
    invoke-direct {p0}, Lcom/payeco/android/plugin/util/LBSTool;->isGPSEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/payeco/android/plugin/util/i;

    invoke-direct {v0, p0}, Lcom/payeco/android/plugin/util/i;-><init>(Lcom/payeco/android/plugin/util/LBSTool;)V

    iput-object v0, p0, Lcom/payeco/android/plugin/util/LBSTool;->mGPSListener:Lcom/payeco/android/plugin/util/i;

    iget-object v0, p0, Lcom/payeco/android/plugin/util/LBSTool;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    int-to-long v2, v7

    iget-object v5, p0, Lcom/payeco/android/plugin/util/LBSTool;->mGPSListener:Lcom/payeco/android/plugin/util/i;

    iget-object v6, p0, Lcom/payeco/android/plugin/util/LBSTool;->mLooper:Landroid/os/Looper;

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    :cond_1
    return-void

    :catch_0
    move-exception v1

    move v7, v0

    goto :goto_0

    :cond_2
    move v7, v0

    goto :goto_0
.end method

.method public saveLbsToLocal(Lcom/payeco/android/plugin/a/a;)V
    .locals 6

    sget-object v0, Lcom/payeco/android/plugin/util/LBSTool;->mContext:Landroid/content/Context;

    const-string v1, "payecoLat"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/payeco/android/plugin/a/a;->a:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/payeco/android/plugin/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/payeco/android/plugin/util/LBSTool;->mContext:Landroid/content/Context;

    const-string v1, "payecoLon"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/payeco/android/plugin/a/a;->b:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/payeco/android/plugin/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startQuryLocation()V
    .locals 2

    iget-object v0, p0, Lcom/payeco/android/plugin/util/LBSTool;->mLBSThread:Lcom/payeco/android/plugin/util/j;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payeco/android/plugin/util/LBSTool;->mLBSThread:Lcom/payeco/android/plugin/util/j;

    :cond_0
    new-instance v0, Lcom/payeco/android/plugin/util/j;

    invoke-direct {v0, p0}, Lcom/payeco/android/plugin/util/j;-><init>(Lcom/payeco/android/plugin/util/LBSTool;)V

    iput-object v0, p0, Lcom/payeco/android/plugin/util/LBSTool;->mLBSThread:Lcom/payeco/android/plugin/util/j;

    iget-object v0, p0, Lcom/payeco/android/plugin/util/LBSTool;->mLBSThread:Lcom/payeco/android/plugin/util/j;

    invoke-virtual {v0}, Lcom/payeco/android/plugin/util/j;->start()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/payeco/android/plugin/util/h;

    invoke-direct {v1, p0}, Lcom/payeco/android/plugin/util/h;-><init>(Lcom/payeco/android/plugin/util/LBSTool;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public unRegisterLocationListener()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/payeco/android/plugin/util/LBSTool;->mGPSListener:Lcom/payeco/android/plugin/util/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payeco/android/plugin/util/LBSTool;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/payeco/android/plugin/util/LBSTool;->mGPSListener:Lcom/payeco/android/plugin/util/i;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iput-object v2, p0, Lcom/payeco/android/plugin/util/LBSTool;->mGPSListener:Lcom/payeco/android/plugin/util/i;

    :cond_0
    iget-object v0, p0, Lcom/payeco/android/plugin/util/LBSTool;->mNetworkListner:Lcom/payeco/android/plugin/util/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/payeco/android/plugin/util/LBSTool;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/payeco/android/plugin/util/LBSTool;->mNetworkListner:Lcom/payeco/android/plugin/util/i;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iput-object v2, p0, Lcom/payeco/android/plugin/util/LBSTool;->mNetworkListner:Lcom/payeco/android/plugin/util/i;

    :cond_1
    return-void
.end method
