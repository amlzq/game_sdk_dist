.class Lorg/apache/commons/lang/Entities$BinaryEntityMap;
.super Lorg/apache/commons/lang/Entities$ArrayEntityMap;
.source "Entities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang/Entities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BinaryEntityMap"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 624
    invoke-direct {p0}, Lorg/apache/commons/lang/Entities$ArrayEntityMap;-><init>()V

    .line 625
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "growBy"    # I

    .prologue
    .line 634
    invoke-direct {p0, p1}, Lorg/apache/commons/lang/Entities$ArrayEntityMap;-><init>(I)V

    .line 635
    return-void
.end method

.method private binarySearch(I)I
    .locals 5
    .param p1, "key"    # I

    .prologue
    .line 645
    const/4 v1, 0x0

    .line 646
    .local v1, "low":I
    iget v4, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->size:I

    add-int/lit8 v0, v4, -0x1

    .line 648
    .local v0, "high":I
    :goto_0
    if-le v1, v0, :cond_1

    .line 660
    add-int/lit8 v4, v1, 0x1

    neg-int v2, v4

    :cond_0
    return v2

    .line 649
    :cond_1
    add-int v4, v1, v0

    shr-int/lit8 v2, v4, 0x1

    .line 650
    .local v2, "mid":I
    iget-object v4, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->values:[I

    aget v3, v4, v2

    .line 652
    .local v3, "midVal":I
    if-ge v3, p1, :cond_2

    .line 653
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 654
    :cond_2
    if-le v3, p1, :cond_0

    .line 655
    add-int/lit8 v0, v2, -0x1

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/String;I)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 667
    iget v1, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->size:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->ensureCapacity(I)V

    .line 668
    invoke-direct {p0, p2}, Lorg/apache/commons/lang/Entities$BinaryEntityMap;->binarySearch(I)I

    move-result v0

    .line 669
    .local v0, "insertAt":I
    if-lez v0, :cond_0

    .line 678
    :goto_0
    return-void

    .line 672
    :cond_0
    add-int/lit8 v1, v0, 0x1

    neg-int v0, v1

    .line 673
    iget-object v1, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->values:[I

    iget-object v2, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->values:[I

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->size:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 674
    iget-object v1, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->values:[I

    aput p2, v1, v0

    .line 675
    iget-object v1, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->names:[Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->names:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->size:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 676
    iget-object v1, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->names:[Ljava/lang/String;

    aput-object p1, v1, v0

    .line 677
    iget v1, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->size:I

    goto :goto_0
.end method

.method public name(I)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 684
    invoke-direct {p0, p1}, Lorg/apache/commons/lang/Entities$BinaryEntityMap;->binarySearch(I)I

    move-result v0

    .line 685
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 686
    const/4 v1, 0x0

    .line 688
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->names:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_0
.end method
