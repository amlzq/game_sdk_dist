.class public Lorg/apache/http/entity/mime/content/ByteArrayBody;
.super Lorg/apache/http/entity/mime/content/AbstractContentBody;


# instance fields
.field private final a:[B

.field private final b:Ljava/lang/String;


# virtual methods
.method public final a(Ljava/io/OutputStream;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/http/entity/mime/content/ByteArrayBody;->a:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/entity/mime/content/ByteArrayBody;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "binary"

    return-object v0
.end method

.method public final e()J
    .locals 2

    iget-object v0, p0, Lorg/apache/http/entity/mime/content/ByteArrayBody;->a:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method
