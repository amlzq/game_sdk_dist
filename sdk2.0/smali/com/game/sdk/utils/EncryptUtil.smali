.class public Lcom/game/sdk/utils/EncryptUtil;
.super Ljava/lang/Object;
.source "EncryptUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static compress(Ljava/io/InputStream;Ljava/io/OutputStream;)V
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

    .line 104
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 106
    .local v2, "gos":Ljava/util/zip/GZIPOutputStream;
    const/16 v3, 0x400

    new-array v1, v3, [B

    .line 107
    .local v1, "data":[B
    :goto_0
    array-length v3, v1

    invoke-virtual {p0, v1, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .local v0, "count":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 110
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 111
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 112
    return-void

    .line 108
    :cond_0
    invoke-virtual {v2, v1, v4, v0}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static compress(Ljava/lang/String;)[B
    .locals 5
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 84
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 85
    .local v2, "bytes":[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 86
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 88
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-static {v0, v1}, Lcom/game/sdk/utils/EncryptUtil;->compress(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 89
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 91
    .local v4, "output":[B
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 92
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 93
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "bytes":[B
    .end local v4    # "output":[B
    :goto_0
    return-object v4

    .line 96
    :catch_0
    move-exception v3

    .line 97
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static rsa(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {}, Lcom/game/sdk/domain/GoagalInfo;->getPublicKey()Ljava/lang/String;

    move-result-object v4

    .line 25
    .local v4, "key":Ljava/lang/String;
    const/4 v7, 0x0

    .line 26
    .local v7, "result":Ljava/lang/String;
    invoke-static {p0}, Lcom/game/sdk/utils/EncryptUtil;->sectionStr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 27
    .local v9, "strs":[Ljava/lang/String;
    if-nez v9, :cond_0

    .line 28
    invoke-static {p0, v4}, Lcom/game/sdk/security/Rsa;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 29
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\u5ba2\u6237\u7aef\u8bf7\u6c42\u52a0\u5bc6\u6570\u636e->"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 52
    :goto_0
    return-object v7

    .line 32
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v0, "bytes":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v5, 0x0

    .line 34
    .local v5, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v11, v9

    if-lt v3, v11, :cond_1

    .line 40
    new-array v1, v5, [B

    .line 41
    .local v1, "dest":[B
    const/4 v3, 0x0

    const/4 v8, 0x0

    .local v8, "start":I
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    if-lt v3, v11, :cond_2

    .line 46
    invoke-static {v1}, Lcom/game/sdk/security/Base64;->encode([B)Ljava/lang/String;

    move-result-object v7

    .line 47
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\u5ba2\u6237\u7aef\u8bf7\u6c42\u52a0\u5bc6\u6570\u636e->"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    .end local v0    # "bytes":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v1    # "dest":[B
    .end local v3    # "i":I
    .end local v5    # "len":I
    .end local v8    # "start":I
    :catch_0
    move-exception v2

    .line 49
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 35
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "bytes":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v3    # "i":I
    .restart local v5    # "len":I
    :cond_1
    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v9, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 36
    aget-object v11, v9, v3

    invoke-static {v11, v4}, Lcom/game/sdk/security/Rsa;->encrypt2(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v6

    .line 37
    .local v6, "output":[B
    array-length v11, v6

    add-int/2addr v5, v11

    .line 38
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 42
    .end local v6    # "output":[B
    .restart local v1    # "dest":[B
    .restart local v8    # "start":I
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 43
    .local v10, "tmp":[B
    const/4 v11, 0x0

    array-length v12, v10

    invoke-static {v10, v11, v1, v8, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    array-length v11, v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/2addr v8, v11

    .line 41
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public static sectionStr(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 58
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 59
    :cond_0
    const/4 v7, 0x0

    .line 78
    :cond_1
    return-object v7

    .line 61
    :cond_2
    const/4 v7, 0x0

    .line 62
    .local v7, "strs":[Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 63
    .local v5, "length":I
    const/16 v8, 0x80

    if-le v5, v8, :cond_1

    .line 64
    div-int/lit16 v9, v5, 0x80

    rem-int/lit16 v8, v5, 0x80

    if-lez v8, :cond_4

    const/4 v8, 0x1

    :goto_0
    add-int v4, v9, v8

    .line 65
    .local v4, "len":I
    new-array v7, v4, [Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    move v2, v1

    .end local v1    # "j":I
    .local v2, "j":I
    :goto_1
    if-ge v0, v5, :cond_1

    .line 67
    mul-int/lit16 v6, v0, 0x80

    .line 68
    .local v6, "start":I
    add-int/lit8 v8, v0, 0x1

    mul-int/lit16 v3, v8, 0x80

    .line 69
    .local v3, "last":I
    if-le v3, v5, :cond_3

    .line 70
    move v3, v5

    .line 72
    :cond_3
    if-ge v2, v4, :cond_1

    .line 75
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "j":I
    .restart local v1    # "j":I
    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    .line 66
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .end local v1    # "j":I
    .restart local v2    # "j":I
    goto :goto_1

    .line 64
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
    .locals 9
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    const/4 v6, 0x0

    .line 119
    if-nez p0, :cond_0

    .line 120
    :try_start_0
    const-string v7, "\u670d\u52a1\u5668\u6ca1\u6709\u8fd4\u56de\u6570\u636e->null"

    invoke-static {v7}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    move-object v5, v6

    .line 140
    :goto_0
    return-object v5

    .line 123
    :cond_0
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-direct {v7, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v7}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 124
    .local v2, "gin":Ljava/util/zip/GZIPInputStream;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 126
    .local v4, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 128
    .local v0, "buf":[B
    :goto_1
    invoke-virtual {v2, v0}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v3

    .local v3, "len":I
    if-gtz v3, :cond_1

    .line 131
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 132
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 133
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>([B)V

    .line 134
    .local v5, "result":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u670d\u52a1\u5668\u8fd4\u56de\u6570\u636e->"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    .end local v0    # "buf":[B
    .end local v2    # "gin":Ljava/util/zip/GZIPInputStream;
    .end local v3    # "len":I
    .end local v4    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 137
    .local v1, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u670d\u52a1\u5668\u8fd4\u56de\u6570\u636e\u89e3\u538b\u5f02\u5e38:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 140
    goto :goto_0

    .line 129
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "buf":[B
    .restart local v2    # "gin":Ljava/util/zip/GZIPInputStream;
    .restart local v3    # "len":I
    .restart local v4    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_1
    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v4, v0, v7, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
