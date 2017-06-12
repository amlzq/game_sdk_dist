.class public Lcom/game/sdk/utils/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/utils/ImageUtils$ImageSize;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateInSampleSize(Lcom/game/sdk/utils/ImageUtils$ImageSize;Lcom/game/sdk/utils/ImageUtils$ImageSize;)I
    .locals 9
    .param p0, "srcSize"    # Lcom/game/sdk/utils/ImageUtils$ImageSize;
    .param p1, "targetSize"    # Lcom/game/sdk/utils/ImageUtils$ImageSize;

    .prologue
    .line 53
    iget v5, p0, Lcom/game/sdk/utils/ImageUtils$ImageSize;->width:I

    .line 54
    .local v5, "width":I
    iget v0, p0, Lcom/game/sdk/utils/ImageUtils$ImageSize;->height:I

    .line 55
    .local v0, "height":I
    const/4 v2, 0x1

    .line 57
    .local v2, "inSampleSize":I
    iget v4, p1, Lcom/game/sdk/utils/ImageUtils$ImageSize;->width:I

    .line 58
    .local v4, "reqWidth":I
    iget v3, p1, Lcom/game/sdk/utils/ImageUtils$ImageSize;->height:I

    .line 60
    .local v3, "reqHeight":I
    if-le v5, v4, :cond_0

    if-le v0, v3, :cond_0

    .line 62
    int-to-float v7, v5

    int-to-float v8, v4

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 63
    .local v6, "widthRatio":I
    int-to-float v7, v0

    int-to-float v8, v3

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 64
    .local v1, "heightRatio":I
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 66
    .end local v1    # "heightRatio":I
    .end local v6    # "widthRatio":I
    :cond_0
    return v2
.end method

.method private static getExpectHeight(Landroid/view/View;)I
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 93
    const/4 v1, 0x0

    .line 94
    .local v1, "height":I
    if-nez p0, :cond_0

    .line 95
    const/4 v3, 0x0

    .line 116
    :goto_0
    return v3

    .line 97
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 99
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_1

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_1

    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 102
    :cond_1
    if-gtz v1, :cond_2

    if-eqz v2, :cond_2

    .line 103
    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 106
    :cond_2
    if-gtz v1, :cond_3

    .line 107
    const-string v3, "mMaxHeight"

    invoke-static {p0, v3}, Lcom/game/sdk/utils/ImageUtils;->getImageViewFieldValue(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    .line 111
    :cond_3
    if-gtz v1, :cond_4

    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 113
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .end local v0    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_4
    move v3, v1

    .line 116
    goto :goto_0
.end method

.method private static getExpectWidth(Landroid/view/View;)I
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 126
    const/4 v2, 0x0

    .line 127
    .local v2, "width":I
    if-nez p0, :cond_0

    .line 128
    const/4 v3, 0x0

    .line 152
    :goto_0
    return v3

    .line 130
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 132
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_1

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_1

    .line 133
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 135
    :cond_1
    if-gtz v2, :cond_2

    if-eqz v1, :cond_2

    .line 136
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 139
    :cond_2
    if-gtz v2, :cond_3

    .line 142
    const-string v3, "mMaxWidth"

    invoke-static {p0, v3}, Lcom/game/sdk/utils/ImageUtils;->getImageViewFieldValue(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v2

    .line 145
    :cond_3
    if-gtz v2, :cond_4

    .line 148
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 149
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .end local v0    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_4
    move v3, v2

    .line 152
    goto :goto_0
.end method

.method public static getImageSize(Ljava/io/InputStream;)Lcom/game/sdk/utils/ImageUtils$ImageSize;
    .locals 4
    .param p0, "imageStream"    # Ljava/io/InputStream;

    .prologue
    .line 27
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 28
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 29
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 30
    new-instance v1, Lcom/game/sdk/utils/ImageUtils$ImageSize;

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v1, v2, v3}, Lcom/game/sdk/utils/ImageUtils$ImageSize;-><init>(II)V

    return-object v1
.end method

.method private static getImageViewFieldValue(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 4
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 163
    const/4 v2, 0x0

    .line 165
    .local v2, "value":I
    :try_start_0
    const-class v3, Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 166
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 167
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 168
    .local v1, "fieldValue":I
    if-lez v1, :cond_0

    const v3, 0x7fffffff

    if-ge v1, v3, :cond_0

    .line 169
    move v2, v1

    .line 173
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v1    # "fieldValue":I
    :cond_0
    :goto_0
    return v2

    .line 171
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static getImageViewSize(Landroid/view/View;)Lcom/game/sdk/utils/ImageUtils$ImageSize;
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 77
    new-instance v0, Lcom/game/sdk/utils/ImageUtils$ImageSize;

    invoke-direct {v0}, Lcom/game/sdk/utils/ImageUtils$ImageSize;-><init>()V

    .line 79
    .local v0, "imageSize":Lcom/game/sdk/utils/ImageUtils$ImageSize;
    invoke-static {p0}, Lcom/game/sdk/utils/ImageUtils;->getExpectWidth(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Lcom/game/sdk/utils/ImageUtils$ImageSize;->width:I

    .line 80
    invoke-static {p0}, Lcom/game/sdk/utils/ImageUtils;->getExpectHeight(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Lcom/game/sdk/utils/ImageUtils$ImageSize;->height:I

    .line 82
    return-object v0
.end method
