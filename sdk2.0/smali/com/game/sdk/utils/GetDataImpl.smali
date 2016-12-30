.class public Lcom/game/sdk/utils/GetDataImpl;
.super Ljava/lang/Object;
.source "GetDataImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GetDataImpl"

.field private static ctx:Landroid/content/Context;

.field private static getdataImpl:Lcom/game/sdk/utils/GetDataImpl;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctxs"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sput-object p1, Lcom/game/sdk/utils/GetDataImpl;->ctx:Landroid/content/Context;

    .line 47
    return-void
.end method

.method public static compress(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 840
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 842
    .local v2, "gos":Ljava/util/zip/GZIPOutputStream;
    const/16 v3, 0x400

    new-array v1, v3, [B

    .line 843
    .local v1, "data":[B
    :goto_0
    array-length v3, v1

    invoke-virtual {p0, v1, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .local v0, "count":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 847
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 848
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 849
    return-void

    .line 844
    :cond_0
    invoke-virtual {v2, v1, v4, v0}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static compress([B)[B
    .locals 5
    .param p0, "data"    # [B

    .prologue
    .line 811
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 812
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 815
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-static {v0, v1}, Lcom/game/sdk/utils/GetDataImpl;->compress(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 817
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 819
    .local v3, "output":[B
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 820
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 821
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 828
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "output":[B
    :goto_0
    return-object v3

    .line 824
    :catch_0
    move-exception v2

    .line 825
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "\u6570\u636e\u538b\u7f29\u5f02\u5e38"

    invoke-static {v4}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 826
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 828
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/game/sdk/utils/GetDataImpl;
    .locals 1
    .param p0, "ctxs"    # Landroid/content/Context;

    .prologue
    .line 50
    sget-object v0, Lcom/game/sdk/utils/GetDataImpl;->getdataImpl:Lcom/game/sdk/utils/GetDataImpl;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/game/sdk/utils/GetDataImpl;

    invoke-direct {v0, p0}, Lcom/game/sdk/utils/GetDataImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/game/sdk/utils/GetDataImpl;->getdataImpl:Lcom/game/sdk/utils/GetDataImpl;

    .line 53
    :cond_0
    sget-object v0, Lcom/game/sdk/utils/GetDataImpl;->ctx:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 54
    sput-object p0, Lcom/game/sdk/utils/GetDataImpl;->ctx:Landroid/content/Context;

    .line 56
    :cond_1
    sget-object v0, Lcom/game/sdk/utils/GetDataImpl;->getdataImpl:Lcom/game/sdk/utils/GetDataImpl;

    return-object v0
.end method

.method private sectionStr(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 647
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 648
    :cond_0
    const/4 v7, 0x0

    .line 667
    :cond_1
    return-object v7

    .line 650
    :cond_2
    const/4 v7, 0x0

    .line 651
    .local v7, "strs":[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 652
    .local v5, "length":I
    const/16 v8, 0x80

    if-le v5, v8, :cond_1

    .line 653
    div-int/lit16 v9, v5, 0x80

    rem-int/lit16 v8, v5, 0x80

    if-lez v8, :cond_4

    const/4 v8, 0x1

    :goto_0
    add-int v4, v9, v8

    .line 654
    .local v4, "len":I
    new-array v7, v4, [Ljava/lang/String;

    .line 655
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    move v2, v1

    .end local v1    # "j":I
    .local v2, "j":I
    :goto_1
    if-ge v0, v5, :cond_1

    .line 656
    mul-int/lit16 v6, v0, 0x80

    .line 657
    .local v6, "start":I
    add-int/lit8 v8, v0, 0x1

    mul-int/lit16 v3, v8, 0x80

    .line 658
    .local v3, "last":I
    if-le v3, v5, :cond_3

    .line 659
    move v3, v5

    .line 661
    :cond_3
    if-ge v2, v4, :cond_1

    .line 664
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "j":I
    .restart local v1    # "j":I
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    .line 655
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .end local v1    # "j":I
    .restart local v2    # "j":I
    goto :goto_1

    .line 653
    .end local v0    # "i":I
    .end local v2    # "j":I
    .end local v3    # "last":I
    .end local v4    # "len":I
    .end local v6    # "start":I
    :cond_4
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public static unzip(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 10
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    const/4 v7, 0x0

    .line 858
    if-nez p0, :cond_0

    .line 859
    :try_start_0
    const-string v8, "\u670d\u52a1\u5668\u6ca1\u6709\u8fd4\u56de\u6570\u636e->null"

    invoke-static {v8}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    move-object v5, v7

    .line 880
    :goto_0
    return-object v5

    .line 862
    :cond_0
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-direct {v8, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v8}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 863
    .local v2, "gin":Ljava/util/zip/GZIPInputStream;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 865
    .local v4, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 867
    .local v0, "buf":[B
    :goto_1
    invoke-virtual {v2, v0}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v3

    .local v3, "len":I
    if-gtz v3, :cond_1

    .line 870
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 871
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 872
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>([B)V

    .line 873
    .local v6, "str_result":Ljava/lang/String;
    invoke-static {v6}, Lcom/game/sdk/utils/Encrypt;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 874
    .local v5, "result":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u670d\u52a1\u5668\u8fd4\u56de\u6570\u636e->"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 876
    .end local v0    # "buf":[B
    .end local v2    # "gin":Ljava/util/zip/GZIPInputStream;
    .end local v3    # "len":I
    .end local v4    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "result":Ljava/lang/String;
    .end local v6    # "str_result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 877
    .local v1, "e":Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u670d\u52a1\u5668\u8fd4\u56de\u6570\u636e\u89e3\u538b\u5f02\u5e38:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 878
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v7

    .line 880
    goto :goto_0

    .line 868
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "buf":[B
    .restart local v2    # "gin":Ljava/util/zip/GZIPInputStream;
    .restart local v3    # "len":I
    .restart local v4    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_1
    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {v4, v0, v8, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public UserOneKeyRegister(Ljava/lang/String;)Lcom/game/sdk/domain/ResultCode;
    .locals 6
    .param p1, "jasonStr"    # Ljava/lang/String;

    .prologue
    .line 130
    const-string v5, "http://sdk.289.com/Api/oneRegister"

    invoke-virtual {p0, v5, p1}, Lcom/game/sdk/utils/GetDataImpl;->doRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 132
    .local v2, "request":Ljava/io/InputStream;
    new-instance v3, Lcom/game/sdk/domain/ResultCode;

    invoke-direct {v3}, Lcom/game/sdk/domain/ResultCode;-><init>()V

    .line 135
    .local v3, "result":Lcom/game/sdk/domain/ResultCode;
    :try_start_0
    invoke-static {v2}, Lcom/game/sdk/utils/GetDataImpl;->unzip(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 136
    .local v4, "str":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 137
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 138
    .local v1, "json":Lorg/json/JSONObject;
    invoke-virtual {v3, v1}, Lcom/game/sdk/domain/ResultCode;->regJson(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v4    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 141
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public alipay2server(Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/game/sdk/domain/ResultCode;
    .locals 12
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "amount"    # F
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "roleid"    # Ljava/lang/String;
    .param p5, "serverid"    # Ljava/lang/String;
    .param p6, "gameid"    # Ljava/lang/String;
    .param p7, "orderid"    # Ljava/lang/String;
    .param p8, "imeil"    # Ljava/lang/String;
    .param p9, "appid"    # Ljava/lang/String;
    .param p10, "agent"    # Ljava/lang/String;
    .param p11, "productname"    # Ljava/lang/String;
    .param p12, "productdesc"    # Ljava/lang/String;
    .param p13, "fcallback"    # Ljava/lang/String;
    .param p14, "attach"    # Ljava/lang/String;

    .prologue
    .line 297
    const/4 v5, 0x0

    .line 300
    .local v5, "result":Lcom/game/sdk/domain/ResultCode;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 301
    .local v3, "json":Lorg/json/JSONObject;
    const-string v8, "a"

    invoke-virtual {v3, v8, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 302
    const-string v8, "b"

    float-to-double v10, p2

    invoke-virtual {v3, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 303
    const-string v8, "c"

    invoke-virtual {v3, v8, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 304
    const-string v8, "d"

    move-object/from16 v0, p4

    invoke-virtual {v3, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 305
    const-string v8, "e"

    move-object/from16 v0, p5

    invoke-virtual {v3, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 306
    const-string v8, "f"

    move-object/from16 v0, p6

    invoke-virtual {v3, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 307
    const-string v8, "g"

    move-object/from16 v0, p7

    invoke-virtual {v3, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 308
    const-string v8, "h"

    move-object/from16 v0, p8

    invoke-virtual {v3, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 309
    const-string v8, "j"

    move-object/from16 v0, p9

    invoke-virtual {v3, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 310
    const-string v8, "k"

    move-object/from16 v0, p10

    invoke-virtual {v3, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 311
    const-string v8, "l"

    move-object/from16 v0, p11

    invoke-virtual {v3, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 312
    const-string v8, "m"

    move-object/from16 v0, p12

    invoke-virtual {v3, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 313
    const-string v8, "n"

    move-object/from16 v0, p14

    invoke-virtual {v3, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 314
    const-string v8, "fcallbackurl"

    move-object/from16 v0, p13

    invoke-virtual {v3, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 315
    const-string v8, "timestamp"

    invoke-static {}, Lcom/game/sdk/utils/Util;->getOrderId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 316
    const-string v8, "version"

    invoke-static {}, Lcom/game/sdk/FYGameSDK;->defaultSDK()Lcom/game/sdk/FYGameSDK;

    move-result-object v9

    invoke-virtual {v9}, Lcom/game/sdk/FYGameSDK;->getVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 317
    const-string v8, "http://sdk.289.com/Api/order"

    .line 318
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    .line 317
    invoke-virtual {p0, v8, v9}, Lcom/game/sdk/utils/GetDataImpl;->doRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 320
    .local v4, "request":Ljava/io/InputStream;
    invoke-static {v4}, Lcom/game/sdk/utils/GetDataImpl;->unzip(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    .line 322
    .local v7, "str":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 324
    new-instance v3, Lorg/json/JSONObject;

    .end local v3    # "json":Lorg/json/JSONObject;
    invoke-direct {v3, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 325
    .restart local v3    # "json":Lorg/json/JSONObject;
    new-instance v6, Lcom/game/sdk/domain/ResultCode;

    invoke-direct {v6}, Lcom/game/sdk/domain/ResultCode;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    .end local v5    # "result":Lcom/game/sdk/domain/ResultCode;
    .local v6, "result":Lcom/game/sdk/domain/ResultCode;
    :try_start_1
    invoke-virtual {v6, v3}, Lcom/game/sdk/domain/ResultCode;->parseAlipayJson(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v6

    .line 333
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "request":Ljava/io/InputStream;
    .end local v6    # "result":Lcom/game/sdk/domain/ResultCode;
    .end local v7    # "str":Ljava/lang/String;
    .restart local v5    # "result":Lcom/game/sdk/domain/ResultCode;
    :cond_0
    :goto_0
    return-object v5

    .line 328
    :catch_0
    move-exception v2

    .line 330
    .local v2, "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 328
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v5    # "result":Lcom/game/sdk/domain/ResultCode;
    .restart local v3    # "json":Lorg/json/JSONObject;
    .restart local v4    # "request":Ljava/io/InputStream;
    .restart local v6    # "result":Lcom/game/sdk/domain/ResultCode;
    .restart local v7    # "str":Ljava/lang/String;
    :catch_1
    move-exception v2

    move-object v5, v6

    .end local v6    # "result":Lcom/game/sdk/domain/ResultCode;
    .restart local v5    # "result":Lcom/game/sdk/domain/ResultCode;
    goto :goto_1
.end method

.method public changeTTB(Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/game/sdk/domain/ResultCode;
    .locals 12
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "amount"    # F
    .param p3, "imeil"    # Ljava/lang/String;
    .param p4, "appid"    # Ljava/lang/String;
    .param p5, "agent"    # Ljava/lang/String;
    .param p6, "username"    # Ljava/lang/String;
    .param p7, "roleid"    # Ljava/lang/String;
    .param p8, "serverid"    # Ljava/lang/String;
    .param p9, "gameid"    # Ljava/lang/String;
    .param p10, "productname"    # Ljava/lang/String;
    .param p11, "productdes"    # Ljava/lang/String;
    .param p12, "attach"    # Ljava/lang/String;
    .param p13, "sign"    # Ljava/lang/String;
    .param p14, "orderid"    # Ljava/lang/String;

    .prologue
    .line 349
    const/4 v5, 0x0

    .line 352
    .local v5, "result":Lcom/game/sdk/domain/ResultCode;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 353
    .local v3, "json":Lorg/json/JSONObject;
    const-string v8, "a"

    invoke-virtual {v3, v8, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 354
    const-string v8, "b"

    float-to-double v10, p2

    invoke-virtual {v3, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 355
    const-string v8, "c"

    move-object/from16 v0, p6

    invoke-virtual {v3, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 356
    const-string v8, "d"

    move-object/from16 v0, p7

    invoke-virtual {v3, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 357
    const-string v8, "e"

    move-object/from16 v0, p8

    invoke-virtual {v3, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 358
    const-string v8, "f"

    move-object/from16 v0, p9

    invoke-virtual {v3, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 359
    const-string v8, "g"

    move-object/from16 v0, p14

    invoke-virtual {v3, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 360
    const-string v8, "h"

    invoke-virtual {v3, v8, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 361
    const-string v8, "j"

    move-object/from16 v0, p4

    invoke-virtual {v3, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 362
    const-string v8, "k"

    move-object/from16 v0, p5

    invoke-virtual {v3, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 363
    const-string v8, "l"

    move-object/from16 v0, p10

    invoke-virtual {v3, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 364
    const-string v8, "timestamp"

    invoke-static {}, Lcom/game/sdk/utils/Util;->getOrderId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 365
    const-string v8, "version"

    invoke-static {}, Lcom/game/sdk/FYGameSDK;->defaultSDK()Lcom/game/sdk/FYGameSDK;

    move-result-object v9

    invoke-virtual {v9}, Lcom/game/sdk/FYGameSDK;->getVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 366
    const-string v8, "http://sdk.289.com/Api/createOrderId"

    .line 367
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    .line 366
    invoke-virtual {p0, v8, v9}, Lcom/game/sdk/utils/GetDataImpl;->doRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 368
    .local v4, "request":Ljava/io/InputStream;
    invoke-static {v4}, Lcom/game/sdk/utils/GetDataImpl;->unzip(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    .line 370
    .local v7, "str":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    .end local v3    # "json":Lorg/json/JSONObject;
    invoke-direct {v3, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 372
    .restart local v3    # "json":Lorg/json/JSONObject;
    new-instance v6, Lcom/game/sdk/domain/ResultCode;

    invoke-direct {v6}, Lcom/game/sdk/domain/ResultCode;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    .end local v5    # "result":Lcom/game/sdk/domain/ResultCode;
    .local v6, "result":Lcom/game/sdk/domain/ResultCode;
    :try_start_1
    invoke-virtual {v6, v3}, Lcom/game/sdk/domain/ResultCode;->parseTTBJson(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v6

    .line 379
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "request":Ljava/io/InputStream;
    .end local v6    # "result":Lcom/game/sdk/domain/ResultCode;
    .end local v7    # "str":Ljava/lang/String;
    .restart local v5    # "result":Lcom/game/sdk/domain/ResultCode;
    :goto_0
    return-object v5

    .line 374
    :catch_0
    move-exception v2

    .line 376
    .local v2, "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 374
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v5    # "result":Lcom/game/sdk/domain/ResultCode;
    .restart local v3    # "json":Lorg/json/JSONObject;
    .restart local v4    # "request":Ljava/io/InputStream;
    .restart local v6    # "result":Lcom/game/sdk/domain/ResultCode;
    .restart local v7    # "str":Ljava/lang/String;
    :catch_1
    move-exception v2

    move-object v5, v6

    .end local v6    # "result":Lcom/game/sdk/domain/ResultCode;
    .restart local v5    # "result":Lcom/game/sdk/domain/ResultCode;
    goto :goto_1
.end method

.method public checkCodeByPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "phone"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;

    .prologue
    .line 447
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 448
    .local v1, "json":Lorg/json/JSONObject;
    const-string v3, "a"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 449
    const-string v3, "b"

    invoke-virtual {v1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 450
    const-string v3, "c"

    invoke-virtual {v1, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 451
    const-string v3, "deviceId"

    sget-object v4, Lcom/game/sdk/TTWAppService;->dm:Lcom/game/sdk/domain/DeviceMsg;

    iget-object v4, v4, Lcom/game/sdk/domain/DeviceMsg;->imeil:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 452
    const-string v3, "timestamp"

    invoke-static {}, Lcom/game/sdk/utils/Util;->getOrderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 453
    const-string v3, "version"

    invoke-static {}, Lcom/game/sdk/FYGameSDK;->defaultSDK()Lcom/game/sdk/FYGameSDK;

    move-result-object v4

    invoke-virtual {v4}, Lcom/game/sdk/FYGameSDK;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 455
    const-string v3, "http://sdk.289.com/Api/checkcode"

    .line 456
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 455
    invoke-virtual {p0, v3, v4}, Lcom/game/sdk/utils/GetDataImpl;->doRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 457
    .local v2, "request":Ljava/io/InputStream;
    invoke-static {v2}, Lcom/game/sdk/utils/GetDataImpl;->unzip(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 463
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "request":Ljava/io/InputStream;
    :goto_0
    return-object v3

    .line 459
    :catch_0
    move-exception v0

    .line 461
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 463
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public createOrderId()Ljava/lang/String;
    .locals 6

    .prologue
    .line 110
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 112
    .local v1, "jsonStr":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v1    # "jsonStr":Lorg/json/JSONObject;
    .local v2, "jsonStr":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "timestamp"

    invoke-static {}, Lcom/game/sdk/utils/Util;->getOrderId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string v4, "version"

    invoke-static {}, Lcom/game/sdk/FYGameSDK;->defaultSDK()Lcom/game/sdk/FYGameSDK;

    move-result-object v5

    invoke-virtual {v5}, Lcom/game/sdk/FYGameSDK;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 119
    .end local v2    # "jsonStr":Lorg/json/JSONObject;
    .restart local v1    # "jsonStr":Lorg/json/JSONObject;
    :goto_0
    const-string v4, "http://sdk.289.com/Api/createOrderId"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/game/sdk/utils/GetDataImpl;->doRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 120
    .local v3, "request":Ljava/io/InputStream;
    invoke-static {v3}, Lcom/game/sdk/utils/GetDataImpl;->unzip(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 115
    .end local v3    # "request":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 115
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "jsonStr":Lorg/json/JSONObject;
    .restart local v2    # "jsonStr":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "jsonStr":Lorg/json/JSONObject;
    .restart local v1    # "jsonStr":Lorg/json/JSONObject;
    goto :goto_1
.end method

.method public doRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 17
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 586
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lcom/game/sdk/TTWAppService;->gameid:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 588
    sget-boolean v15, Lcom/game/sdk/TTWAppService;->isLogin:Z

    if-eqz v15, :cond_0

    sget-object v15, Lcom/game/sdk/TTWAppService;->userinfo:Lcom/game/sdk/domain/UserInfo;

    if-eqz v15, :cond_0

    sget-object v15, Lcom/game/sdk/TTWAppService;->userinfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v15, v15, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    if-eqz v15, :cond_0

    .line 589
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lcom/game/sdk/TTWAppService;->userinfo:Lcom/game/sdk/domain/UserInfo;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 591
    :cond_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "->"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 592
    sget-object v15, Lcom/game/sdk/utils/GetDataImpl;->ctx:Landroid/content/Context;

    invoke-static {v15}, Lcom/game/sdk/utils/NetworkImpl;->getHttpClient(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v3

    .line 593
    .local v3, "client":Lorg/apache/http/client/HttpClient;
    if-nez v3, :cond_1

    .line 594
    const/4 v15, 0x0

    .line 642
    :goto_0
    return-object v15

    .line 596
    :cond_1
    new-instance v10, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 597
    .local v10, "post":Lorg/apache/http/client/methods/HttpPost;
    const-string v15, "content-type"

    const-string v16, "text/html"

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    if-eqz p2, :cond_6

    .line 599
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/game/sdk/utils/GetDataImpl;->sectionStr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 600
    .local v13, "strs":[Ljava/lang/String;
    if-nez v13, :cond_2

    .line 601
    sget-object v15, Lcom/game/sdk/TTWAppService;->publicKey:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v0, v15}, Lcom/game/sdk/utils/Rsa;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 623
    :goto_1
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "\u5ba2\u6237\u7aef\u53d1\u9001\u6570\u636e->"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 624
    if-nez p2, :cond_5

    .line 625
    const/4 v15, 0x0

    goto :goto_0

    .line 604
    :cond_2
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 605
    .local v2, "bytes":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v8, 0x0

    .line 606
    .local v8, "len":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    array-length v15, v13

    if-lt v7, v15, :cond_3

    .line 612
    new-array v4, v8, [B

    .line 613
    .local v4, "dest":[B
    const/4 v7, 0x0

    const/4 v12, 0x0

    .local v12, "start":I
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v15

    if-lt v7, v15, :cond_4

    .line 618
    invoke-static {v4}, Lcom/game/sdk/utils/Base64;->encode([B)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 607
    .end local v4    # "dest":[B
    .end local v12    # "start":I
    :cond_3
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v13, v7

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 608
    aget-object v15, v13, v7

    sget-object v16, Lcom/game/sdk/TTWAppService;->publicKey:Ljava/lang/String;

    invoke-static/range {v15 .. v16}, Lcom/game/sdk/utils/Rsa;->encrypt2(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v9

    .line 609
    .local v9, "output":[B
    array-length v15, v9

    add-int/2addr v8, v15

    .line 610
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 614
    .end local v9    # "output":[B
    .restart local v4    # "dest":[B
    .restart local v12    # "start":I
    :cond_4
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    .line 615
    .local v14, "tmp":[B
    const/4 v15, 0x0

    array-length v0, v14

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v14, v15, v4, v12, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 616
    array-length v15, v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v12, v15

    .line 613
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 619
    .end local v2    # "bytes":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v4    # "dest":[B
    .end local v7    # "i":I
    .end local v8    # "len":I
    .end local v12    # "start":I
    .end local v14    # "tmp":[B
    :catch_0
    move-exception v5

    .line 620
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 627
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_5
    new-instance v6, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    invoke-static {v15}, Lcom/game/sdk/utils/GetDataImpl;->compress([B)[B

    move-result-object v15

    invoke-direct {v6, v15}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 628
    .local v6, "entity":Lorg/apache/http/HttpEntity;
    invoke-virtual {v10, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 631
    .end local v6    # "entity":Lorg/apache/http/HttpEntity;
    .end local v13    # "strs":[Ljava/lang/String;
    :cond_6
    :try_start_1
    invoke-interface {v3, v10}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .line 632
    .local v11, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    const/16 v16, 0xc8

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 633
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v15

    goto/16 :goto_0

    .line 635
    .end local v11    # "response":Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v5

    .line 636
    .local v5, "e":Lorg/apache/http/client/ClientProtocolException;
    const-string v15, "ClientProtocol\u5f02\u5e38"

    invoke-static {v15}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 637
    invoke-virtual {v5}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 642
    .end local v5    # "e":Lorg/apache/http/client/ClientProtocolException;
    :cond_7
    :goto_4
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 638
    :catch_2
    move-exception v5

    .line 639
    .local v5, "e":Ljava/io/IOException;
    const-string v15, "IO\u5f02\u5e38"

    invoke-static {v15}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 640
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method

.method public doRequesttwo(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 10
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 677
    sget-object v7, Lcom/game/sdk/utils/GetDataImpl;->ctx:Landroid/content/Context;

    invoke-static {v7}, Lcom/game/sdk/utils/NetworkImpl;->getHttpClient(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 678
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    if-nez v0, :cond_1

    .line 712
    :cond_0
    :goto_0
    return-object v6

    .line 682
    :cond_1
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v4, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 683
    .local v4, "post":Lorg/apache/http/client/methods/HttpPost;
    const-string v7, "content-type"

    const-string v8, "text/html"

    invoke-virtual {v4, v7, v8}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    if-eqz p2, :cond_2

    .line 686
    new-instance v3, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-direct {v3, v7}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 687
    .local v3, "entity":Lorg/apache/http/HttpEntity;
    invoke-virtual {v4, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 689
    .end local v3    # "entity":Lorg/apache/http/HttpEntity;
    :cond_2
    const/4 v1, 0x0

    .line 691
    .local v1, "count":I
    :goto_1
    const/4 v7, 0x2

    if-ge v1, v7, :cond_0

    .line 693
    :try_start_0
    invoke-interface {v0, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 694
    .local v5, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_3

    .line 695
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    goto :goto_0

    .line 697
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v2

    .line 698
    .local v2, "e":Lorg/apache/http/client/ClientProtocolException;
    const-string v7, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38"

    invoke-static {v7}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 699
    invoke-virtual {v2}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 704
    .end local v2    # "e":Lorg/apache/http/client/ClientProtocolException;
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 706
    const-wide/16 v8, 0xbb8

    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 707
    :catch_1
    move-exception v2

    .line 708
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v7, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38"

    invoke-static {v7}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 709
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 700
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v2

    .line 701
    .local v2, "e":Ljava/io/IOException;
    const-string v7, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38"

    invoke-static {v7}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 702
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public getImgFromNet(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/game/sdk/utils/GetDataImpl;->doRequesttwo(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getInit(Landroid/content/Context;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 469
    :try_start_0
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 470
    .local v11, "jsonparam":Lorg/json/JSONObject;
    const-string v14, "a"

    sget-object v15, Lcom/game/sdk/TTWAppService;->gameid:Ljava/lang/String;

    invoke-virtual {v11, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 471
    const-string v14, "b"

    sget-object v15, Lcom/game/sdk/TTWAppService;->agentid:Ljava/lang/String;

    invoke-virtual {v11, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 472
    const-string v14, "timestamp"

    invoke-static {}, Lcom/game/sdk/utils/Util;->getOrderId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 473
    const-string v14, "version"

    invoke-static {}, Lcom/game/sdk/FYGameSDK;->defaultSDK()Lcom/game/sdk/FYGameSDK;

    move-result-object v15

    invoke-virtual {v15}, Lcom/game/sdk/FYGameSDK;->getVersion()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 475
    const-string v14, "http://sdk.289.com/Api/init"

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/game/sdk/utils/GetDataImpl;->doRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v13

    .line 476
    .local v13, "request":Ljava/io/InputStream;
    invoke-static {v13}, Lcom/game/sdk/utils/GetDataImpl;->unzip(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v9

    .line 477
    .local v9, "jsonStr":Ljava/lang/String;
    const/4 v5, 0x1

    .line 478
    .local v5, "isWrite":Z
    if-nez v9, :cond_0

    .line 479
    const-string v14, "init.json"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/game/sdk/utils/Util;->readInfoInSDCard(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 480
    const/4 v5, 0x0

    .line 482
    :cond_0
    if-eqz v9, :cond_3

    .line 483
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 484
    .local v8, "jsonObject":Lorg/json/JSONObject;
    const-string v14, "code"

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 485
    .local v2, "code":I
    sput v2, Lcom/game/sdk/TTWAppService;->code:I

    .line 486
    const/4 v14, 0x1

    if-ne v2, v14, :cond_2

    .line 487
    const-string v14, "data"

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 488
    .local v7, "jsonInit":Lorg/json/JSONObject;
    const-string v14, "tip"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/game/sdk/TTWAppService;->tips:Ljava/lang/String;

    .line 489
    const-string v14, "logo"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/game/sdk/TTWAppService;->logo:Ljava/lang/String;

    .line 490
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    sput-object v14, Lcom/game/sdk/TTWAppService;->channels:Ljava/util/List;

    .line 491
    const-string v14, "debug"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v14, 0x0

    :goto_0
    sput v14, Lcom/game/sdk/TTWAppService;->debug:I

    .line 492
    const/4 v1, 0x0

    .line 493
    .local v1, "cm":Lcom/game/sdk/domain/PayWay;
    const-string v14, "payway"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 494
    .local v10, "json_channels":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-lt v4, v14, :cond_5

    .line 503
    if-eqz v5, :cond_1

    .line 504
    const-string v14, "init.json"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v14}, Lcom/game/sdk/utils/Util;->writeInfoInSDCard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "\u8c03\u8bd5\u72b6\u6001->"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v15, Lcom/game/sdk/TTWAppService;->debug:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 508
    .end local v1    # "cm":Lcom/game/sdk/domain/PayWay;
    .end local v4    # "i":I
    .end local v7    # "jsonInit":Lorg/json/JSONObject;
    .end local v10    # "json_channels":Lorg/json/JSONArray;
    :cond_2
    const/16 v14, -0x64

    if-ne v2, v14, :cond_3

    .line 509
    const-string v14, "publickey"

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 510
    .local v12, "publickey":Ljava/lang/String;
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_3

    .line 511
    invoke-static {v12}, Lcom/game/sdk/utils/Util;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/game/sdk/TTWAppService;->publicKey:Ljava/lang/String;

    .line 512
    const-string v14, "\u516c\u94a5\u4e0d\u5bf9\u91cd\u65b0\u521d\u59cb\u5316"

    invoke-static {v14}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 513
    invoke-virtual/range {p0 .. p1}, Lcom/game/sdk/utils/GetDataImpl;->getInit(Landroid/content/Context;)V

    .line 521
    .end local v2    # "code":I
    .end local v5    # "isWrite":Z
    .end local v8    # "jsonObject":Lorg/json/JSONObject;
    .end local v9    # "jsonStr":Ljava/lang/String;
    .end local v11    # "jsonparam":Lorg/json/JSONObject;
    .end local v12    # "publickey":Ljava/lang/String;
    .end local v13    # "request":Ljava/io/InputStream;
    :cond_3
    :goto_2
    return-void

    .line 491
    .restart local v2    # "code":I
    .restart local v5    # "isWrite":Z
    .restart local v7    # "jsonInit":Lorg/json/JSONObject;
    .restart local v8    # "jsonObject":Lorg/json/JSONObject;
    .restart local v9    # "jsonStr":Ljava/lang/String;
    .restart local v11    # "jsonparam":Lorg/json/JSONObject;
    .restart local v13    # "request":Ljava/io/InputStream;
    :cond_4
    const-string v14, "debug"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    goto :goto_0

    .line 495
    .restart local v1    # "cm":Lcom/game/sdk/domain/PayWay;
    .restart local v4    # "i":I
    .restart local v10    # "json_channels":Lorg/json/JSONArray;
    :cond_5
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 496
    .local v6, "jb":Lorg/json/JSONObject;
    new-instance v1, Lcom/game/sdk/domain/PayWay;

    .line 497
    .end local v1    # "cm":Lcom/game/sdk/domain/PayWay;
    const-string v14, "a"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    const/4 v14, 0x0

    move/from16 v16, v14

    .line 498
    :goto_3
    const-string v14, "c"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    const-string v14, ""

    move-object v15, v14

    .line 499
    :goto_4
    const-string v14, "b"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    const-string v14, ""

    .line 496
    :goto_5
    move/from16 v0, v16

    invoke-direct {v1, v0, v15, v14}, Lcom/game/sdk/domain/PayWay;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 500
    .restart local v1    # "cm":Lcom/game/sdk/domain/PayWay;
    sget-object v14, Lcom/game/sdk/TTWAppService;->channels:Ljava/util/List;

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    const/4 v1, 0x0

    .line 494
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 497
    .end local v1    # "cm":Lcom/game/sdk/domain/PayWay;
    :cond_6
    const-string v14, "a"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    move/from16 v16, v14

    goto :goto_3

    .line 498
    :cond_7
    const-string v14, "c"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v15, v14

    goto :goto_4

    .line 499
    :cond_8
    const-string v14, "b"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    goto :goto_5

    .line 517
    .end local v2    # "code":I
    .end local v4    # "i":I
    .end local v5    # "isWrite":Z
    .end local v6    # "jb":Lorg/json/JSONObject;
    .end local v7    # "jsonInit":Lorg/json/JSONObject;
    .end local v8    # "jsonObject":Lorg/json/JSONObject;
    .end local v9    # "jsonStr":Ljava/lang/String;
    .end local v10    # "json_channels":Lorg/json/JSONArray;
    .end local v11    # "jsonparam":Lorg/json/JSONObject;
    .end local v13    # "request":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 518
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method public getTTB(Ljava/lang/String;)V
    .locals 6
    .param p1, "jasonStr"    # Ljava/lang/String;

    .prologue
    .line 232
    const-string v5, "http://sdk.289.com/Api/getMoney"

    invoke-virtual {p0, v5, p1}, Lcom/game/sdk/utils/GetDataImpl;->doRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 235
    .local v3, "request":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v3}, Lcom/game/sdk/utils/GetDataImpl;->unzip(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 236
    .local v4, "str":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 237
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 239
    .local v2, "json":Lorg/json/JSONObject;
    const-string v5, "b"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 241
    .local v0, "data":Lorg/json/JSONObject;
    const-string v5, "money"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "0"

    :goto_0
    sput-object v5, Lcom/game/sdk/TTWAppService;->ttb:Ljava/lang/String;

    .line 242
    const-string v5, "gamemoney"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "0"

    :goto_1
    sput-object v5, Lcom/game/sdk/TTWAppService;->gttb:Ljava/lang/String;

    .line 254
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v4    # "str":Ljava/lang/String;
    :cond_0
    :goto_2
    return-void

    .line 241
    .restart local v0    # "data":Lorg/json/JSONObject;
    .restart local v2    # "json":Lorg/json/JSONObject;
    .restart local v4    # "str":Ljava/lang/String;
    :cond_1
    const-string v5, "money"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 242
    :cond_2
    const-string v5, "gamemoney"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_1

    .line 248
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v4    # "str":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 250
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method public getTTBTwo(Ljava/lang/String;)Lcom/game/sdk/domain/ResultCode;
    .locals 7
    .param p1, "jasonStr"    # Ljava/lang/String;

    .prologue
    .line 264
    const/4 v3, 0x0

    .line 267
    .local v3, "result":Lcom/game/sdk/domain/ResultCode;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 269
    .local v1, "json":Lorg/json/JSONObject;
    const-string v6, "http://sdk.289.com/Api/getMoney"

    invoke-virtual {p0, v6, p1}, Lcom/game/sdk/utils/GetDataImpl;->doRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 271
    .local v2, "request":Ljava/io/InputStream;
    invoke-static {v2}, Lcom/game/sdk/utils/GetDataImpl;->unzip(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 272
    .local v5, "str":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 273
    new-instance v1, Lorg/json/JSONObject;

    .end local v1    # "json":Lorg/json/JSONObject;
    invoke-direct {v1, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 276
    .restart local v1    # "json":Lorg/json/JSONObject;
    :cond_0
    new-instance v4, Lcom/game/sdk/domain/ResultCode;

    invoke-direct {v4}, Lcom/game/sdk/domain/ResultCode;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    .end local v3    # "result":Lcom/game/sdk/domain/ResultCode;
    .local v4, "result":Lcom/game/sdk/domain/ResultCode;
    :try_start_1
    invoke-virtual {v4, v1}, Lcom/game/sdk/domain/ResultCode;->parseTTBTwoJson(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .line 283
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "request":Ljava/io/InputStream;
    .end local v4    # "result":Lcom/game/sdk/domain/ResultCode;
    .end local v5    # "str":Ljava/lang/String;
    .restart local v3    # "result":Lcom/game/sdk/domain/ResultCode;
    :goto_0
    return-object v3

    .line 278
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 278
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v3    # "result":Lcom/game/sdk/domain/ResultCode;
    .restart local v1    # "json":Lorg/json/JSONObject;
    .restart local v2    # "request":Ljava/io/InputStream;
    .restart local v4    # "result":Lcom/game/sdk/domain/ResultCode;
    .restart local v5    # "str":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v3, v4

    .end local v4    # "result":Lcom/game/sdk/domain/ResultCode;
    .restart local v3    # "result":Lcom/game/sdk/domain/ResultCode;
    goto :goto_1
.end method

.method public login(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/game/sdk/domain/ResultCode;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "jasonStr"    # Ljava/lang/String;

    .prologue
    .line 85
    const-string v6, "http://sdk.289.com/Api/login"

    invoke-virtual {p0, v6, p3}, Lcom/game/sdk/utils/GetDataImpl;->doRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 86
    .local v3, "request":Ljava/io/InputStream;
    new-instance v4, Lcom/game/sdk/domain/ResultCode;

    invoke-direct {v4}, Lcom/game/sdk/domain/ResultCode;-><init>()V

    .line 88
    .local v4, "result":Lcom/game/sdk/domain/ResultCode;
    :try_start_0
    invoke-static {v3}, Lcom/game/sdk/utils/GetDataImpl;->unzip(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 89
    .local v5, "str":Ljava/lang/String;
    const/4 v1, 0x1

    .line 90
    .local v1, "isWrite":Z
    if-nez v5, :cond_0

    .line 91
    invoke-static {p1, p2}, Lcom/game/sdk/utils/Util;->readInfoInSDCard(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 92
    const/4 v1, 0x0

    .line 94
    :cond_0
    if-eqz v5, :cond_1

    .line 95
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 96
    .local v2, "json":Lorg/json/JSONObject;
    invoke-virtual {v4, v2}, Lcom/game/sdk/domain/ResultCode;->regJson(Lorg/json/JSONObject;)V

    .line 97
    if-eqz v1, :cond_1

    .line 98
    invoke-static {p1, v5, p2}, Lcom/game/sdk/utils/Util;->writeInfoInSDCard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v1    # "isWrite":Z
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v5    # "str":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v4

    .line 101
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public loginOut(Ljava/lang/String;)Lcom/game/sdk/domain/ResultCode;
    .locals 6
    .param p1, "jasonStr"    # Ljava/lang/String;

    .prologue
    .line 554
    const-string v5, "http://sdk.289.com/Api/logout"

    invoke-virtual {p0, v5, p1}, Lcom/game/sdk/utils/GetDataImpl;->doRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 555
    .local v2, "request":Ljava/io/InputStream;
    new-instance v3, Lcom/game/sdk/domain/ResultCode;

    invoke-direct {v3}, Lcom/game/sdk/domain/ResultCode;-><init>()V

    .line 558
    .local v3, "result":Lcom/game/sdk/domain/ResultCode;
    :try_start_0
    invoke-static {v2}, Lcom/game/sdk/utils/GetDataImpl;->unzip(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 559
    .local v4, "str":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 560
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 561
    .local v1, "json":Lorg/json/JSONObject;
    invoke-virtual {v3, v1}, Lcom/game/sdk/domain/ResultCode;->loginoutJson(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v4    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v5, "\u7528\u6237\u9000\u51fa"

    invoke-static {v5}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 569
    return-object v3

    .line 564
    :catch_0
    move-exception v0

    .line 566
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public nowpayserver(Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/game/sdk/domain/ResultCode;
    .locals 12
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "amount"    # F
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "roleid"    # Ljava/lang/String;
    .param p5, "serverid"    # Ljava/lang/String;
    .param p6, "gameid"    # Ljava/lang/String;
    .param p7, "orderid"    # Ljava/lang/String;
    .param p8, "imeil"    # Ljava/lang/String;
    .param p9, "appid"    # Ljava/lang/String;
    .param p10, "agent"    # Ljava/lang/String;
    .param p11, "productname"    # Ljava/lang/String;
    .param p12, "productdesc"    # Ljava/lang/String;
    .param p13, "fcallback"    # Ljava/lang/String;
    .param p14, "attach"    # Ljava/lang/String;
    .param p15, "preSignStr"    # Ljava/lang/String;

    .prologue
    .line 183
    const/4 v5, 0x0

    .line 186
    .local v5, "result":Lcom/game/sdk/domain/ResultCode;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 187
    .local v3, "json":Lorg/json/JSONObject;
    const-string v8, "a"

    invoke-virtual {v3, v8, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    const-string v8, "b"

    float-to-double v10, p2

    invoke-virtual {v3, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 189
    const-string v8, "c"

    invoke-virtual {v3, v8, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    const-string v8, "d"

    move-object/from16 v0, p4

    invoke-virtual {v3, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    const-string v8, "e"

    move-object/from16 v0, p5

    invoke-virtual {v3, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    const-string v8, "f"

    move-object/from16 v0, p6

    invoke-virtual {v3, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    const-string v8, "g"

    move-object/from16 v0, p7

    invoke-virtual {v3, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    const-string v8, "h"

    move-object/from16 v0, p8

    invoke-virtual {v3, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    const-string v8, "j"

    move-object/from16 v0, p9

    invoke-virtual {v3, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    const-string v8, "k"

    move-object/from16 v0, p10

    invoke-virtual {v3, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    const-string v8, "l"

    move-object/from16 v0, p11

    invoke-virtual {v3, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    const-string v8, "n"

    move-object/from16 v0, p14

    invoke-virtual {v3, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    const-string v8, "fcallbackurl"

    move-object/from16 v0, p13

    invoke-virtual {v3, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    const-string v8, "o"

    move-object/from16 v0, p15

    invoke-virtual {v3, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    const-string v8, "timestamp"

    invoke-static {}, Lcom/game/sdk/utils/Util;->getOrderId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    const-string v8, "version"

    invoke-static {}, Lcom/game/sdk/FYGameSDK;->defaultSDK()Lcom/game/sdk/FYGameSDK;

    move-result-object v9

    invoke-virtual {v9}, Lcom/game/sdk/FYGameSDK;->getVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    const-string v8, "http://sdk.289.com/Api/order"

    .line 206
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    .line 205
    invoke-virtual {p0, v8, v9}, Lcom/game/sdk/utils/GetDataImpl;->doRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 208
    .local v4, "request":Ljava/io/InputStream;
    invoke-static {v4}, Lcom/game/sdk/utils/GetDataImpl;->unzip(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    .line 212
    .local v7, "str":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 214
    new-instance v3, Lorg/json/JSONObject;

    .end local v3    # "json":Lorg/json/JSONObject;
    invoke-direct {v3, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 215
    .restart local v3    # "json":Lorg/json/JSONObject;
    new-instance v6, Lcom/game/sdk/domain/ResultCode;

    invoke-direct {v6}, Lcom/game/sdk/domain/ResultCode;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .end local v5    # "result":Lcom/game/sdk/domain/ResultCode;
    .local v6, "result":Lcom/game/sdk/domain/ResultCode;
    :try_start_1
    invoke-virtual {v6, v3}, Lcom/game/sdk/domain/ResultCode;->parseNowPayJson(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v6

    .line 223
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "request":Ljava/io/InputStream;
    .end local v6    # "result":Lcom/game/sdk/domain/ResultCode;
    .end local v7    # "str":Ljava/lang/String;
    .restart local v5    # "result":Lcom/game/sdk/domain/ResultCode;
    :cond_0
    :goto_0
    return-object v5

    .line 218
    :catch_0
    move-exception v2

    .line 220
    .local v2, "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 218
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v5    # "result":Lcom/game/sdk/domain/ResultCode;
    .restart local v3    # "json":Lorg/json/JSONObject;
    .restart local v4    # "request":Ljava/io/InputStream;
    .restart local v6    # "result":Lcom/game/sdk/domain/ResultCode;
    .restart local v7    # "str":Ljava/lang/String;
    :catch_1
    move-exception v2

    move-object v5, v6

    .end local v6    # "result":Lcom/game/sdk/domain/ResultCode;
    .restart local v5    # "result":Lcom/game/sdk/domain/ResultCode;
    goto :goto_1
.end method

.method public parseIs2Str(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 726
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 727
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x400

    new-array v1, v5, [B

    .line 728
    .local v1, "buffer":[B
    const/4 v3, 0x0

    .line 730
    .local v3, "len":I
    :goto_0
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_1

    .line 733
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 743
    .local v4, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 745
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 752
    .end local v4    # "str":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v4

    .line 731
    :cond_1
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v0, v1, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 736
    :catch_0
    move-exception v2

    .line 737
    .local v2, "e":Lorg/apache/http/client/ClientProtocolException;
    :try_start_3
    const-string v5, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38"

    invoke-static {v5}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 738
    invoke-virtual {v2}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 743
    if-eqz v0, :cond_2

    .line 745
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 752
    .end local v2    # "e":Lorg/apache/http/client/ClientProtocolException;
    :cond_2
    :goto_2
    const/4 v4, 0x0

    goto :goto_1

    .line 746
    .restart local v4    # "str":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 747
    .local v2, "e":Ljava/io/IOException;
    const-string v5, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38"

    invoke-static {v5}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 748
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 746
    .end local v4    # "str":Ljava/lang/String;
    .local v2, "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v2

    .line 747
    .local v2, "e":Ljava/io/IOException;
    const-string v5, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38"

    invoke-static {v5}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 748
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 739
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 740
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_5
    const-string v5, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38"

    invoke-static {v5}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 741
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 743
    if-eqz v0, :cond_2

    .line 745
    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    .line 746
    :catch_4
    move-exception v2

    .line 747
    const-string v5, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38"

    invoke-static {v5}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 748
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 742
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 743
    if-eqz v0, :cond_3

    .line 745
    :try_start_7
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 751
    :cond_3
    :goto_3
    throw v5

    .line 746
    :catch_5
    move-exception v2

    .line 747
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v6, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38"

    invoke-static {v6}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 748
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public parseIs3Str(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 10
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 762
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 763
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v8, 0x400

    new-array v1, v8, [B

    .line 764
    .local v1, "buffer":[B
    const/4 v4, 0x0

    .line 766
    .local v4, "len":I
    :goto_0
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v8, -0x1

    if-ne v4, v8, :cond_2

    .line 769
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    .line 770
    .local v7, "str":Ljava/lang/String;
    const-string v2, ""

    .line 771
    .local v2, "dest":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 772
    const-string v8, "\\s*|\t|\r|\n"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 773
    .local v6, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 774
    .local v5, "m":Ljava/util/regex/Matcher;
    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 778
    .end local v5    # "m":Ljava/util/regex/Matcher;
    .end local v6    # "p":Ljava/util/regex/Pattern;
    :cond_0
    invoke-static {v2}, Lcom/game/sdk/utils/Encrypt;->decode2(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 789
    if-eqz v0, :cond_1

    .line 791
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 799
    .end local v2    # "dest":Ljava/lang/String;
    .end local v7    # "str":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v8

    .line 767
    :cond_2
    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {v0, v1, v8, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 779
    :catch_0
    move-exception v3

    .line 780
    .local v3, "e":Ljava/io/IOException;
    :try_start_3
    const-string v8, "\u6570\u636e\u83b7\u53d6\u5f02\u5e38"

    invoke-static {v8}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 781
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 789
    if-eqz v0, :cond_3

    .line 791
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 799
    .end local v3    # "e":Ljava/io/IOException;
    :cond_3
    :goto_2
    const/4 v8, 0x0

    goto :goto_1

    .line 792
    .restart local v2    # "dest":Ljava/lang/String;
    .restart local v7    # "str":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 793
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v9, "\u6570\u636e\u83b7\u53d6\u5f02\u5e38"

    invoke-static {v9}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 794
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 792
    .end local v2    # "dest":Ljava/lang/String;
    .end local v7    # "str":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 793
    const-string v8, "\u6570\u636e\u83b7\u53d6\u5f02\u5e38"

    invoke-static {v8}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 794
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 782
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 783
    .local v3, "e":Ljava/lang/NullPointerException;
    :try_start_5
    const-string v8, "\u6570\u636e\u83b7\u53d6\u5f02\u5e38"

    invoke-static {v8}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 784
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 789
    if-eqz v0, :cond_3

    .line 791
    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    .line 792
    :catch_4
    move-exception v3

    .line 793
    .local v3, "e":Ljava/io/IOException;
    const-string v8, "\u6570\u636e\u83b7\u53d6\u5f02\u5e38"

    invoke-static {v8}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 794
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 785
    .end local v3    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v3

    .line 786
    .local v3, "e":Ljava/lang/Exception;
    :try_start_7
    const-string v8, "\u6570\u636e\u83b7\u53d6\u5f02\u5e38"

    invoke-static {v8}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 787
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 789
    if-eqz v0, :cond_3

    .line 791
    :try_start_8
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_2

    .line 792
    :catch_6
    move-exception v3

    .line 793
    .local v3, "e":Ljava/io/IOException;
    const-string v8, "\u6570\u636e\u83b7\u53d6\u5f02\u5e38"

    invoke-static {v8}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 794
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 788
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 789
    if-eqz v0, :cond_4

    .line 791
    :try_start_9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 798
    :cond_4
    :goto_3
    throw v8

    .line 792
    :catch_7
    move-exception v3

    .line 793
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v9, "\u6570\u636e\u83b7\u53d6\u5f02\u5e38"

    invoke-static {v9}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 794
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public register(Ljava/lang/String;)Lcom/game/sdk/domain/ResultCode;
    .locals 6
    .param p1, "jasonStr"    # Ljava/lang/String;

    .prologue
    .line 156
    const-string v5, "http://sdk.289.com/Api/registernew"

    invoke-virtual {p0, v5, p1}, Lcom/game/sdk/utils/GetDataImpl;->doRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 157
    .local v2, "request":Ljava/io/InputStream;
    new-instance v3, Lcom/game/sdk/domain/ResultCode;

    invoke-direct {v3}, Lcom/game/sdk/domain/ResultCode;-><init>()V

    .line 161
    .local v3, "result":Lcom/game/sdk/domain/ResultCode;
    :try_start_0
    invoke-static {v2}, Lcom/game/sdk/utils/GetDataImpl;->unzip(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 163
    .local v4, "str":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 164
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 165
    .local v1, "json":Lorg/json/JSONObject;
    invoke-virtual {v3, v1}, Lcom/game/sdk/domain/ResultCode;->regJson(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v4    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 168
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public searchLoginUserinfoByImel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "appid"    # Ljava/lang/String;
    .param p2, "imeil"    # Ljava/lang/String;

    .prologue
    .line 391
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 392
    .local v1, "json":Lorg/json/JSONObject;
    const-string v3, "a"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 393
    const-string v3, "b"

    invoke-virtual {v1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 394
    const-string v3, "timestamp"

    invoke-static {}, Lcom/game/sdk/utils/Util;->getOrderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 395
    const-string v3, "version"

    invoke-static {}, Lcom/game/sdk/FYGameSDK;->defaultSDK()Lcom/game/sdk/FYGameSDK;

    move-result-object v4

    invoke-virtual {v4}, Lcom/game/sdk/FYGameSDK;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 396
    const-string v3, "http://sdk.289.com/Api/searchUserByImeil"

    .line 397
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 396
    invoke-virtual {p0, v3, v4}, Lcom/game/sdk/utils/GetDataImpl;->doRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 399
    .local v2, "request":Ljava/io/InputStream;
    invoke-static {v2}, Lcom/game/sdk/utils/GetDataImpl;->unzip(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 406
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "request":Ljava/io/InputStream;
    :goto_0
    return-object v3

    .line 401
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 406
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public sendCodeByPhone(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 418
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 419
    .local v1, "json":Lorg/json/JSONObject;
    const-string v3, "a"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 420
    const-string v3, "b"

    sget-object v4, Lcom/game/sdk/TTWAppService;->userinfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 421
    const-string v3, "deviceId"

    sget-object v4, Lcom/game/sdk/TTWAppService;->dm:Lcom/game/sdk/domain/DeviceMsg;

    iget-object v4, v4, Lcom/game/sdk/domain/DeviceMsg;->imeil:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 422
    const-string v3, "timestamp"

    invoke-static {}, Lcom/game/sdk/utils/Util;->getOrderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 423
    const-string v3, "version"

    invoke-static {}, Lcom/game/sdk/FYGameSDK;->defaultSDK()Lcom/game/sdk/FYGameSDK;

    move-result-object v4

    invoke-virtual {v4}, Lcom/game/sdk/FYGameSDK;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 425
    const-string v3, "http://sdk.289.com/Api/sendcode"

    .line 426
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 425
    invoke-virtual {p0, v3, v4}, Lcom/game/sdk/utils/GetDataImpl;->doRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 428
    .local v2, "request":Ljava/io/InputStream;
    invoke-static {v2}, Lcom/game/sdk/utils/GetDataImpl;->unzip(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 435
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "request":Ljava/io/InputStream;
    :goto_0
    return-object v3

    .line 430
    :catch_0
    move-exception v0

    .line 432
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 435
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public test()V
    .locals 5

    .prologue
    .line 60
    const-string v3, "http://192.168.0.159/web/test7.php"

    .line 61
    const-string v4, "ssss//!~@ssssssss12312\u6de1\u5b9a"

    .line 60
    invoke-virtual {p0, v3, v4}, Lcom/game/sdk/utils/GetDataImpl;->doRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 62
    .local v2, "request":Ljava/io/InputStream;
    invoke-virtual {p0, v2}, Lcom/game/sdk/utils/GetDataImpl;->parseIs2Str(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "bb":Ljava/lang/String;
    invoke-static {v1}, Lcom/game/sdk/utils/Encrypt;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "aa":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "service test:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public uploadImage(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "imageBase64str"    # Ljava/lang/String;

    .prologue
    .line 532
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 533
    .local v2, "json":Lorg/json/JSONObject;
    const-string v3, "a"

    sget-object v4, Lcom/game/sdk/TTWAppService;->userinfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 534
    const-string v3, "b"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 535
    const-string v3, "timestamp"

    invoke-static {}, Lcom/game/sdk/utils/Util;->getOrderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 536
    const-string v3, "version"

    invoke-static {}, Lcom/game/sdk/FYGameSDK;->defaultSDK()Lcom/game/sdk/FYGameSDK;

    move-result-object v4

    invoke-virtual {v4}, Lcom/game/sdk/FYGameSDK;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 538
    const-string v3, "http://sdk.289.com/Api/uploadPic"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/game/sdk/utils/GetDataImpl;->doRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 539
    .local v1, "is":Ljava/io/InputStream;
    invoke-static {v1}, Lcom/game/sdk/utils/GetDataImpl;->unzip(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 546
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "json":Lorg/json/JSONObject;
    :goto_0
    return-object v3

    .line 540
    :catch_0
    move-exception v0

    .line 542
    .local v0, "e1":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 546
    const/4 v3, 0x0

    goto :goto_0
.end method
