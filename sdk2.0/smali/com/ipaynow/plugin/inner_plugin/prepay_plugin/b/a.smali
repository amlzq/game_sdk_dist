.class public final Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/b/a;
.super Ljava/lang/Object;


# direct methods
.method public static a([B[B)[B
    .locals 5

    const/16 v3, 0x10

    const/4 v1, 0x0

    const/16 v0, 0x18

    :try_start_0
    new-array v2, v0, [B

    array-length v0, p0

    if-ne v0, v3, :cond_1

    const/4 v0, 0x0

    const/4 v3, 0x0

    array-length v4, p0

    invoke-static {p0, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x0

    const/16 v3, 0x10

    const/16 v4, 0x8

    invoke-static {p0, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    array-length v0, p1

    array-length v3, p1

    rem-int/lit8 v3, v3, 0x8

    sub-int/2addr v0, v3

    add-int/lit8 v3, v0, 0x8

    new-array v0, v3, [B

    :goto_1
    if-lt v1, v3, :cond_2

    const/4 v1, 0x0

    const/4 v3, 0x0

    array-length v4, p1

    invoke-static {p1, v1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    :cond_0
    new-instance v0, Ljavax/crypto/spec/DESedeKeySpec;

    invoke-direct {v0, v2}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([B)V

    const-string v1, "DESede"

    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    const-string v1, "DESede/ECB/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    :goto_2
    return-object v0

    :cond_1
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x18

    invoke-static {p0, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :try_start_1
    aput-byte v4, v0, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
