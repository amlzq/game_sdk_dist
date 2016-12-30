.class public final Lcom/payeco/android/plugin/b/e;
.super Ljava/lang/Object;


# static fields
.field static final a:[B


# instance fields
.field private b:[J

.field private c:[J

.field private d:[B

.field private e:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x40

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    sput-object v0, Lcom/payeco/android/plugin/b/e;->a:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-wide/16 v2, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/payeco/android/plugin/b/e;->b:[J

    new-array v0, v5, [J

    iput-object v0, p0, Lcom/payeco/android/plugin/b/e;->c:[J

    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/payeco/android/plugin/b/e;->d:[B

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/payeco/android/plugin/b/e;->e:[B

    iget-object v0, p0, Lcom/payeco/android/plugin/b/e;->c:[J

    aput-wide v2, v0, v1

    iget-object v0, p0, Lcom/payeco/android/plugin/b/e;->c:[J

    aput-wide v2, v0, v4

    iget-object v0, p0, Lcom/payeco/android/plugin/b/e;->b:[J

    const-wide/32 v2, 0x67452301

    aput-wide v2, v0, v1

    iget-object v0, p0, Lcom/payeco/android/plugin/b/e;->b:[J

    const-wide v2, 0xefcdab89L

    aput-wide v2, v0, v4

    iget-object v0, p0, Lcom/payeco/android/plugin/b/e;->b:[J

    const-wide v2, 0x98badcfeL

    aput-wide v2, v0, v5

    iget-object v0, p0, Lcom/payeco/android/plugin/b/e;->b:[J

    const/4 v1, 0x3

    const-wide/32 v2, 0x10325476

    aput-wide v2, v0, v1

    return-void
.end method

.method public static a([B)[B
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "NoSuchAlgorithmException caught!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method
