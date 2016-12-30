.class Lorg/apache/commons/lang/Entities$TreeEntityMap;
.super Lorg/apache/commons/lang/Entities$MapIntMap;
.source "Entities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang/Entities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TreeEntityMap"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 496
    invoke-direct {p0}, Lorg/apache/commons/lang/Entities$MapIntMap;-><init>()V

    .line 497
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/lang/Entities$MapIntMap;->mapNameToValue:Ljava/util/Map;

    .line 498
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/lang/Entities$MapIntMap;->mapValueToName:Ljava/util/Map;

    .line 499
    return-void
.end method
