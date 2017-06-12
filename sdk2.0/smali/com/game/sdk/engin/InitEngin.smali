.class public Lcom/game/sdk/engin/InitEngin;
.super Lcom/game/sdk/engin/BaseEngin;
.source "InitEngin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/game/sdk/engin/BaseEngin",
        "<",
        "Lcom/game/sdk/domain/InItInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/game/sdk/engin/BaseEngin;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object p1, p0, Lcom/game/sdk/engin/InitEngin;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method private get()Lcom/game/sdk/domain/InItInfo;
    .locals 1

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/game/sdk/engin/InitEngin;->getInitInfo()Lcom/game/sdk/domain/InItInfo;

    move-result-object v0

    .line 139
    .local v0, "inItInfo":Lcom/game/sdk/domain/InItInfo;
    invoke-direct {p0, v0}, Lcom/game/sdk/engin/InitEngin;->getBitmap(Lcom/game/sdk/domain/InItInfo;)V

    .line 140
    return-object v0
.end method

.method private getBitmap(Lcom/game/sdk/domain/InItInfo;)V
    .locals 8
    .param p1, "inItInfo"    # Lcom/game/sdk/domain/InItInfo;

    .prologue
    .line 166
    if-eqz p1, :cond_7

    .line 169
    :try_start_0
    iget-object v4, p0, Lcom/game/sdk/engin/InitEngin;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    iget-object v5, p1, Lcom/game/sdk/domain/InItInfo;->logo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/game/sdk/engin/InitEngin;->mContext:Landroid/content/Context;

    const/16 v6, 0x78

    invoke-static {v5, v6}, Lcom/game/sdk/utils/DimensionUtil;->dip2px(Landroid/content/Context;I)I

    move-result v5

    iget-object v6, p0, Lcom/game/sdk/engin/InitEngin;->mContext:Landroid/content/Context;

    const/16 v7, 0x1e

    invoke-static {v6, v7}, Lcom/game/sdk/utils/DimensionUtil;->dip2px(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->get()Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p1, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    .line 170
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-eqz v4, :cond_8

    iget-object v4, p1, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_8

    .line 171
    iget-object v4, p0, Lcom/game/sdk/engin/InitEngin;->mContext:Landroid/content/Context;

    iget-object v5, p1, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    const-string v6, "game_logo_image"

    invoke-static {v4, v5, v6}, Lcom/game/sdk/utils/Util;->writeLaunchImageInSDCard(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 184
    :cond_0
    :goto_0
    iget-object v4, p1, Lcom/game/sdk/domain/InItInfo;->launchImg:Ljava/lang/String;

    invoke-static {v4}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_1

    .line 186
    :try_start_1
    iget-object v4, p0, Lcom/game/sdk/engin/InitEngin;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    iget-object v5, p1, Lcom/game/sdk/domain/InItInfo;->launchImg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->get()Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p1, Lcom/game/sdk/domain/InItInfo;->lunchBitmp:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 191
    :cond_1
    :goto_1
    :try_start_2
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-eqz v4, :cond_a

    iget-object v4, p1, Lcom/game/sdk/domain/InItInfo;->lunchBitmp:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_a

    .line 192
    iget-object v4, p0, Lcom/game/sdk/engin/InitEngin;->mContext:Landroid/content/Context;

    iget-object v5, p1, Lcom/game/sdk/domain/InItInfo;->lunchBitmp:Landroid/graphics/Bitmap;

    const-string v6, "game_init_image"

    invoke-static {v4, v5, v6}, Lcom/game/sdk/utils/Util;->writeLaunchImageInSDCard(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 204
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/game/sdk/engin/InitEngin;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    iget-object v5, p1, Lcom/game/sdk/domain/InItInfo;->floatInfo:Lcom/game/sdk/domain/FloatInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/FloatInfo;->floatDrag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->get()Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p1, Lcom/game/sdk/domain/InItInfo;->floatBitmp:Landroid/graphics/Bitmap;

    .line 206
    iget-object v4, p1, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    if-eqz v4, :cond_3

    .line 207
    iget-object v4, p0, Lcom/game/sdk/engin/InitEngin;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    iget-object v5, p1, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/StyleInfo;->regImage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->get()Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p1, Lcom/game/sdk/domain/InItInfo;->registerBitmp:Landroid/graphics/Bitmap;

    .line 208
    iget-object v4, p0, Lcom/game/sdk/engin/InitEngin;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    iget-object v5, p1, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/StyleInfo;->playImage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->get()Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p1, Lcom/game/sdk/domain/InItInfo;->playBitmp:Landroid/graphics/Bitmap;

    .line 211
    :cond_3
    iget-object v4, p1, Lcom/game/sdk/domain/InItInfo;->floatInfo:Lcom/game/sdk/domain/FloatInfo;

    if-eqz v4, :cond_6

    .line 212
    iget-object v4, p0, Lcom/game/sdk/engin/InitEngin;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    iget-object v5, p1, Lcom/game/sdk/domain/InItInfo;->floatInfo:Lcom/game/sdk/domain/FloatInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/FloatInfo;->floatDrag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->get()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 213
    .local v0, "dragBitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/game/sdk/engin/InitEngin;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    iget-object v5, p1, Lcom/game/sdk/domain/InItInfo;->floatInfo:Lcom/game/sdk/domain/FloatInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/FloatInfo;->floatLeft:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->get()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 214
    .local v1, "dragLeftBitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/game/sdk/engin/InitEngin;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    iget-object v5, p1, Lcom/game/sdk/domain/InItInfo;->floatInfo:Lcom/game/sdk/domain/FloatInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/FloatInfo;->floatRight:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->get()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 216
    .local v2, "dragRightBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    .line 217
    iget-object v4, p0, Lcom/game/sdk/engin/InitEngin;->mContext:Landroid/content/Context;

    const-string v5, "drag_image"

    invoke-static {v4, v0, v5}, Lcom/game/sdk/utils/Util;->writeImageInSDCard(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 220
    :cond_4
    if-eqz v1, :cond_5

    .line 221
    iget-object v4, p0, Lcom/game/sdk/engin/InitEngin;->mContext:Landroid/content/Context;

    const-string v5, "drag_left_image"

    invoke-static {v4, v1, v5}, Lcom/game/sdk/utils/Util;->writeImageInSDCard(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 224
    :cond_5
    if-eqz v2, :cond_6

    .line 225
    iget-object v4, p0, Lcom/game/sdk/engin/InitEngin;->mContext:Landroid/content/Context;

    const-string v5, "drag_right_image"

    invoke-static {v4, v2, v5}, Lcom/game/sdk/utils/Util;->writeImageInSDCard(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 233
    .end local v0    # "dragBitmap":Landroid/graphics/Bitmap;
    .end local v1    # "dragLeftBitmap":Landroid/graphics/Bitmap;
    .end local v2    # "dragRightBitmap":Landroid/graphics/Bitmap;
    :cond_6
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "lunch bitmap1 in cache ->"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 234
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "lunch bitmap2 in cache ->"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lcom/game/sdk/domain/InItInfo;->lunchBitmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 235
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "lunch bitmap3 in cache ->"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lcom/game/sdk/domain/InItInfo;->floatBitmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 236
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "lunch bitmap4 in cache ->"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lcom/game/sdk/domain/InItInfo;->registerBitmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 237
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "lunch bitmap5 in cache ->"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lcom/game/sdk/domain/InItInfo;->playBitmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 239
    :cond_7
    return-void

    .line 173
    :cond_8
    :try_start_3
    iget-object v4, p1, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_9

    .line 174
    iget-object v4, p0, Lcom/game/sdk/engin/InitEngin;->mContext:Landroid/content/Context;

    iget-object v5, p1, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    const-string v6, "game_logo_image"

    invoke-static {v4, v5, v6}, Lcom/game/sdk/utils/Util;->writeLaunchImageInSDCard(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 175
    iget-object v4, p0, Lcom/game/sdk/engin/InitEngin;->mContext:Landroid/content/Context;

    iget-object v5, p1, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    const-string v6, "agent_game_logo_image"

    invoke-static {v4, v5, v6}, Lcom/game/sdk/utils/Util;->writeLaunchImageInSDCard(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 229
    :catch_0
    move-exception v3

    .line 230
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 177
    .end local v3    # "e":Ljava/io/IOException;
    :cond_9
    :try_start_4
    iget-object v4, p0, Lcom/game/sdk/engin/InitEngin;->mContext:Landroid/content/Context;

    const-string v5, "game_logo_image"

    invoke-static {v4, v5}, Lcom/game/sdk/utils/Util;->getInitLogoFileBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 178
    iget-object v4, p0, Lcom/game/sdk/engin/InitEngin;->mContext:Landroid/content/Context;

    const-string v5, "game_logo_image"

    invoke-static {v4, v5}, Lcom/game/sdk/utils/Util;->getInitLogoFileBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p1, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 187
    :catch_1
    move-exception v3

    .line 188
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 194
    .end local v3    # "e":Ljava/io/IOException;
    :cond_a
    iget-object v4, p1, Lcom/game/sdk/domain/InItInfo;->lunchBitmp:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_b

    .line 195
    iget-object v4, p0, Lcom/game/sdk/engin/InitEngin;->mContext:Landroid/content/Context;

    iget-object v5, p1, Lcom/game/sdk/domain/InItInfo;->lunchBitmp:Landroid/graphics/Bitmap;

    const-string v6, "game_init_image"

    invoke-static {v4, v5, v6}, Lcom/game/sdk/utils/Util;->writeLaunchImageInSDCard(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 196
    iget-object v4, p0, Lcom/game/sdk/engin/InitEngin;->mContext:Landroid/content/Context;

    iget-object v5, p1, Lcom/game/sdk/domain/InItInfo;->lunchBitmp:Landroid/graphics/Bitmap;

    const-string v6, "agent_game_init_image"

    invoke-static {v4, v5, v6}, Lcom/game/sdk/utils/Util;->writeLaunchImageInSDCard(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 198
    :cond_b
    iget-object v4, p0, Lcom/game/sdk/engin/InitEngin;->mContext:Landroid/content/Context;

    const-string v5, "game_init_image"

    invoke-static {v4, v5}, Lcom/game/sdk/utils/Util;->getInitLogoFileBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 199
    iget-object v4, p0, Lcom/game/sdk/engin/InitEngin;->mContext:Landroid/content/Context;

    const-string v5, "game_init_image"

    invoke-static {v4, v5}, Lcom/game/sdk/utils/Util;->getInitLogoFileBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p1, Lcom/game/sdk/domain/InItInfo;->lunchBitmp:Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2
.end method

.method private getInitInfo()Lcom/game/sdk/domain/InItInfo;
    .locals 7

    .prologue
    .line 155
    const/4 v2, 0x0

    .line 157
    .local v2, "inItInfo":Lcom/game/sdk/domain/InItInfo;
    :try_start_0
    iget-object v4, p0, Lcom/game/sdk/engin/InitEngin;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v4

    invoke-virtual {p0}, Lcom/game/sdk/engin/InitEngin;->getUrl()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lcom/game/sdk/utils/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, "initInfoStr":Ljava/lang/String;
    const-class v4, Lcom/game/sdk/domain/InItInfo;

    invoke-static {v3, v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/game/sdk/domain/InItInfo;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v3    # "initInfoStr":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 159
    :catch_0
    move-exception v1

    .line 160
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private save(Lcom/game/sdk/domain/InItInfo;)Z
    .locals 6
    .param p1, "inItInfo"    # Lcom/game/sdk/domain/InItInfo;

    .prologue
    const/4 v2, 0x0

    .line 91
    const/4 v1, 0x1

    .line 92
    .local v1, "flag":Z
    iget-object v3, p1, Lcom/game/sdk/domain/InItInfo;->logo:Ljava/lang/String;

    invoke-static {v3}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v2

    .line 96
    :cond_1
    iget-object v3, p1, Lcom/game/sdk/domain/InItInfo;->floatInfo:Lcom/game/sdk/domain/FloatInfo;

    if-eqz v3, :cond_0

    .line 99
    iget-object v3, p1, Lcom/game/sdk/domain/InItInfo;->floatInfo:Lcom/game/sdk/domain/FloatInfo;

    iget-object v3, v3, Lcom/game/sdk/domain/FloatInfo;->floatDrag:Ljava/lang/String;

    invoke-static {v3}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 102
    iget-object v3, p1, Lcom/game/sdk/domain/InItInfo;->floatInfo:Lcom/game/sdk/domain/FloatInfo;

    iget-object v3, v3, Lcom/game/sdk/domain/FloatInfo;->floatLeft:Ljava/lang/String;

    invoke-static {v3}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 105
    iget-object v3, p1, Lcom/game/sdk/domain/InItInfo;->floatInfo:Lcom/game/sdk/domain/FloatInfo;

    iget-object v3, v3, Lcom/game/sdk/domain/FloatInfo;->floatRight:Ljava/lang/String;

    invoke-static {v3}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 111
    :try_start_0
    invoke-direct {p0, p1}, Lcom/game/sdk/engin/InitEngin;->saveInitInfo(Lcom/game/sdk/domain/InItInfo;)V

    .line 113
    iget-object v2, p0, Lcom/game/sdk/engin/InitEngin;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    iget-object v3, p1, Lcom/game/sdk/domain/InItInfo;->logo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, p0, Lcom/game/sdk/engin/InitEngin;->mContext:Landroid/content/Context;

    const/16 v4, 0x78

    invoke-static {v3, v4}, Lcom/game/sdk/utils/DimensionUtil;->dip2px(Landroid/content/Context;I)I

    move-result v3

    iget-object v4, p0, Lcom/game/sdk/engin/InitEngin;->mContext:Landroid/content/Context;

    const/16 v5, 0x1e

    invoke-static {v4, v5}, Lcom/game/sdk/utils/DimensionUtil;->dip2px(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    .line 115
    iget-object v2, p1, Lcom/game/sdk/domain/InItInfo;->launchImg:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 116
    iget-object v2, p0, Lcom/game/sdk/engin/InitEngin;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    iget-object v3, p1, Lcom/game/sdk/domain/InItInfo;->launchImg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    .line 119
    :cond_2
    iget-object v2, p0, Lcom/game/sdk/engin/InitEngin;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    iget-object v3, p1, Lcom/game/sdk/domain/InItInfo;->floatInfo:Lcom/game/sdk/domain/FloatInfo;

    iget-object v3, v3, Lcom/game/sdk/domain/FloatInfo;->floatDrag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    .line 120
    iget-object v2, p0, Lcom/game/sdk/engin/InitEngin;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    iget-object v3, p1, Lcom/game/sdk/domain/InItInfo;->floatInfo:Lcom/game/sdk/domain/FloatInfo;

    iget-object v3, v3, Lcom/game/sdk/domain/FloatInfo;->floatLeft:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    .line 121
    iget-object v2, p0, Lcom/game/sdk/engin/InitEngin;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    iget-object v3, p1, Lcom/game/sdk/domain/InItInfo;->floatInfo:Lcom/game/sdk/domain/FloatInfo;

    iget-object v3, v3, Lcom/game/sdk/domain/FloatInfo;->floatRight:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    .line 123
    iget-object v2, p1, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    if-eqz v2, :cond_3

    .line 124
    iget-object v2, p0, Lcom/game/sdk/engin/InitEngin;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    iget-object v3, p1, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    iget-object v3, v3, Lcom/game/sdk/domain/StyleInfo;->regImage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    .line 125
    iget-object v2, p0, Lcom/game/sdk/engin/InitEngin;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    iget-object v3, p1, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    iget-object v3, v3, Lcom/game/sdk/domain/StyleInfo;->playImage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    .line 128
    :cond_3
    invoke-direct {p0, p1}, Lcom/game/sdk/engin/InitEngin;->getBitmap(Lcom/game/sdk/domain/InItInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v2, v1

    .line 133
    goto/16 :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private saveInitInfo(Lcom/game/sdk/domain/InItInfo;)V
    .locals 4
    .param p1, "inItInfo"    # Lcom/game/sdk/domain/InItInfo;

    .prologue
    .line 144
    if-eqz p1, :cond_0

    .line 145
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "initInfoStr":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/game/sdk/engin/InitEngin;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v2

    invoke-virtual {p0}, Lcom/game/sdk/engin/InitEngin;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/game/sdk/utils/PreferenceUtil;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v1    # "initInfoStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 148
    .restart local v1    # "initInfoStr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private saveResult(Lcom/game/sdk/domain/ResultInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/game/sdk/domain/ResultInfo",
            "<",
            "Lcom/game/sdk/domain/InItInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/InItInfo;>;"
    iget v0, p1, Lcom/game/sdk/domain/ResultInfo;->code:I

    sput v0, Lcom/game/sdk/TTWAppService;->code:I

    .line 84
    iget-object v0, p1, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    check-cast v0, Lcom/game/sdk/domain/InItInfo;

    iget-object v0, v0, Lcom/game/sdk/domain/InItInfo;->tip:Ljava/lang/String;

    sput-object v0, Lcom/game/sdk/TTWAppService;->tips:Ljava/lang/String;

    .line 85
    iget-object v0, p1, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    check-cast v0, Lcom/game/sdk/domain/InItInfo;

    iget-object v0, v0, Lcom/game/sdk/domain/InItInfo;->logo:Ljava/lang/String;

    sput-object v0, Lcom/game/sdk/TTWAppService;->logo:Ljava/lang/String;

    .line 86
    iget-object v0, p1, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    check-cast v0, Lcom/game/sdk/domain/InItInfo;

    iget-object v0, v0, Lcom/game/sdk/domain/InItInfo;->payway:Ljava/util/List;

    sput-object v0, Lcom/game/sdk/TTWAppService;->channels:Ljava/util/List;

    .line 88
    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/game/sdk/net/constans/ServerConfig;->INIT_URL:Ljava/lang/String;

    return-object v0
.end method

.method public run()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 44
    const-string v4, "init run ---"

    invoke-static {v4}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 45
    const/4 v2, 0x1

    .line 48
    .local v2, "result":Z
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 49
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "mt"

    iget-object v5, p0, Lcom/game/sdk/engin/InitEngin;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/game/sdk/utils/SystemUtil;->getOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v5, "user_id"

    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    :goto_0
    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const/4 v4, 0x1

    const-class v5, Lcom/game/sdk/domain/InItInfo;

    invoke-virtual {p0, v4, v5, v1}, Lcom/game/sdk/engin/InitEngin;->getResultInfo(ZLjava/lang/Class;Ljava/util/Map;)Lcom/game/sdk/domain/ResultInfo;

    move-result-object v3

    .line 53
    .local v3, "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/InItInfo;>;"
    if-eqz v3, :cond_1

    iget v4, v3, Lcom/game/sdk/domain/ResultInfo;->code:I

    if-ne v4, v6, :cond_1

    .line 54
    iget-object v4, v3, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    check-cast v4, Lcom/game/sdk/domain/InItInfo;

    sput-object v4, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    .line 56
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    invoke-direct {p0, v4}, Lcom/game/sdk/engin/InitEngin;->save(Lcom/game/sdk/domain/InItInfo;)Z

    move-result v2

    .line 79
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/InItInfo;>;"
    :goto_1
    return v2

    .line 50
    .restart local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string v4, ""

    goto :goto_0

    .line 59
    .restart local v3    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/InItInfo;>;"
    :cond_1
    if-eqz v3, :cond_2

    iget v4, v3, Lcom/game/sdk/domain/ResultInfo;->code:I

    const/16 v5, -0x64

    if-ne v4, v5, :cond_2

    .line 60
    iget-object v4, v3, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    check-cast v4, Lcom/game/sdk/domain/InItInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/InItInfo;->publickey:Ljava/lang/String;

    sput-object v4, Lcom/game/sdk/domain/GoagalInfo;->publicKey:Ljava/lang/String;

    .line 61
    invoke-virtual {p0}, Lcom/game/sdk/engin/InitEngin;->run()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 73
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/InItInfo;>;"
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "init catch error ---"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 75
    sput-object v7, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    .line 76
    const/4 v2, 0x0

    goto :goto_1

    .line 63
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/InItInfo;>;"
    :cond_2
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "init run other error and get init data from cache ---"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 70
    const/4 v4, 0x0

    sput-object v4, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 71
    const/4 v2, 0x0

    goto :goto_1
.end method
