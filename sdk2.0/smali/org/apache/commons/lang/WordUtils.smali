.class public Lorg/apache/commons/lang/WordUtils;
.super Ljava/lang/Object;
.source "WordUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 244
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/WordUtils;->capitalize(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static capitalize(Ljava/lang/String;[C)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "delimiters"    # [C

    .prologue
    .line 277
    if-nez p1, :cond_1

    const/4 v3, -0x1

    .line 278
    .local v3, "delimLen":I
    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    if-nez v3, :cond_2

    .line 297
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object p0

    .line 277
    .end local v3    # "delimLen":I
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    array-length v3, p1

    goto :goto_0

    .line 281
    .restart local v3    # "delimLen":I
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 282
    .local v5, "strLen":I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 283
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    .line 284
    .local v1, "capitalizeNext":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-lt v4, v5, :cond_3

    .line 297
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 285
    :cond_3
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 287
    .local v2, "ch":C
    invoke-static {v2, p1}, Lorg/apache/commons/lang/WordUtils;->isDelimiter(C[C)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 288
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 289
    const/4 v1, 0x1

    .line 284
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 290
    :cond_4
    if-eqz v1, :cond_5

    .line 291
    invoke-static {v2}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 292
    const/4 v1, 0x0

    goto :goto_3

    .line 294
    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3
.end method

.method public static capitalizeFully(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 321
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/WordUtils;->capitalizeFully(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static capitalizeFully(Ljava/lang/String;[C)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "delimiters"    # [C

    .prologue
    .line 351
    if-nez p1, :cond_1

    const/4 v0, -0x1

    .line 352
    .local v0, "delimLen":I
    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_2

    .line 356
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object p0

    .line 351
    .end local v0    # "delimLen":I
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    array-length v0, p1

    goto :goto_0

    .line 355
    .restart local v0    # "delimLen":I
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 356
    invoke-static {p0, p1}, Lorg/apache/commons/lang/WordUtils;->capitalize(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method public static initials(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 509
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/WordUtils;->initials(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initials(Ljava/lang/String;[C)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "delimiters"    # [C

    .prologue
    .line 540
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 562
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 543
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_2

    array-length v7, p1

    if-nez v7, :cond_2

    .line 544
    const-string p0, ""

    goto :goto_0

    .line 546
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 547
    .local v6, "strLen":I
    div-int/lit8 v7, v6, 0x2

    add-int/lit8 v7, v7, 0x1

    new-array v0, v7, [C

    .line 548
    .local v0, "buf":[C
    const/4 v2, 0x0

    .line 549
    .local v2, "count":I
    const/4 v5, 0x1

    .line 550
    .local v5, "lastWasGap":Z
    const/4 v4, 0x0

    .local v4, "i":I
    move v3, v2

    .end local v2    # "count":I
    .local v3, "count":I
    :goto_1
    if-lt v4, v6, :cond_3

    .line 562
    new-instance p0, Ljava/lang/String;

    .end local p0    # "str":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-direct {p0, v0, v7, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 551
    .restart local p0    # "str":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 553
    .local v1, "ch":C
    invoke-static {v1, p1}, Lorg/apache/commons/lang/WordUtils;->isDelimiter(C[C)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 554
    const/4 v5, 0x1

    move v2, v3

    .line 550
    .end local v3    # "count":I
    .restart local v2    # "count":I
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2    # "count":I
    .restart local v3    # "count":I
    goto :goto_1

    .line 555
    :cond_4
    if-eqz v5, :cond_5

    .line 556
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "count":I
    .restart local v2    # "count":I
    aput-char v1, v0, v3

    .line 557
    const/4 v5, 0x0

    goto :goto_2

    .end local v2    # "count":I
    .restart local v3    # "count":I
    :cond_5
    move v2, v3

    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_2
.end method

.method private static isDelimiter(C[C)Z
    .locals 3
    .param p0, "ch"    # C
    .param p1, "delimiters"    # [C

    .prologue
    .line 574
    if-nez p1, :cond_0

    .line 575
    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    .line 582
    :goto_0
    return v2

    .line 577
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p1

    .local v1, "isize":I
    :goto_1
    if-lt v0, v1, :cond_1

    .line 582
    const/4 v2, 0x0

    goto :goto_0

    .line 578
    :cond_1
    aget-char v2, p1, v0

    if-ne p0, v2, :cond_2

    .line 579
    const/4 v2, 0x1

    goto :goto_0

    .line 577
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static swapCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 455
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "strLen":I
    if-nez v3, :cond_1

    .line 482
    .end local v3    # "strLen":I
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 458
    .restart local v3    # "strLen":I
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 460
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v5, 0x1

    .line 461
    .local v5, "whitespace":Z
    const/4 v1, 0x0

    .line 462
    .local v1, "ch":C
    const/4 v4, 0x0

    .line 464
    .local v4, "tmp":C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v3, :cond_2

    .line 482
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 465
    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 466
    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 467
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    .line 479
    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 480
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    .line 464
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 468
    :cond_3
    invoke-static {v1}, Ljava/lang/Character;->isTitleCase(C)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 469
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    goto :goto_2

    .line 470
    :cond_4
    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 471
    if-eqz v5, :cond_5

    .line 472
    invoke-static {v1}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v4

    goto :goto_2

    .line 474
    :cond_5
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    goto :goto_2

    .line 477
    :cond_6
    move v4, v1

    goto :goto_2
.end method

.method public static uncapitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 378
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/WordUtils;->uncapitalize(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static uncapitalize(Ljava/lang/String;[C)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "delimiters"    # [C

    .prologue
    .line 407
    if-nez p1, :cond_1

    const/4 v2, -0x1

    .line 408
    .local v2, "delimLen":I
    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    if-nez v2, :cond_2

    .line 427
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object p0

    .line 407
    .end local v2    # "delimLen":I
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    array-length v2, p1

    goto :goto_0

    .line 411
    .restart local v2    # "delimLen":I
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 412
    .local v4, "strLen":I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 413
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v5, 0x1

    .line 414
    .local v5, "uncapitalizeNext":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-lt v3, v4, :cond_3

    .line 427
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 415
    :cond_3
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 417
    .local v1, "ch":C
    invoke-static {v1, p1}, Lorg/apache/commons/lang/WordUtils;->isDelimiter(C[C)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 418
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 419
    const/4 v5, 0x1

    .line 414
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 420
    :cond_4
    if-eqz v5, :cond_5

    .line 421
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 422
    const/4 v5, 0x0

    goto :goto_3

    .line 424
    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3
.end method

.method public static wrap(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "wrapLength"    # I

    .prologue
    .line 143
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang/WordUtils;->wrap(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static wrap(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "wrapLength"    # I
    .param p2, "newLineStr"    # Ljava/lang/String;
    .param p3, "wrapLongWords"    # Z

    .prologue
    const/16 v5, 0x20

    .line 165
    if-nez p0, :cond_0

    .line 166
    const/4 v4, 0x0

    .line 216
    :goto_0
    return-object v4

    .line 168
    :cond_0
    if-nez p2, :cond_1

    .line 169
    sget-object p2, Lorg/apache/commons/lang/SystemUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 171
    :cond_1
    const/4 v4, 0x1

    if-ge p1, v4, :cond_2

    .line 172
    const/4 p1, 0x1

    .line 174
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 175
    .local v0, "inputLineLength":I
    const/4 v1, 0x0

    .line 176
    .local v1, "offset":I
    new-instance v3, Ljava/lang/StringBuffer;

    add-int/lit8 v4, v0, 0x20

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 178
    .local v3, "wrappedLine":Ljava/lang/StringBuffer;
    :goto_1
    sub-int v4, v0, v1

    if-gt v4, p1, :cond_3

    .line 214
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 179
    :cond_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_4

    .line 180
    add-int/lit8 v1, v1, 0x1

    .line 181
    goto :goto_1

    .line 183
    :cond_4
    add-int v4, p1, v1

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    .line 185
    .local v2, "spaceToWrapAt":I
    if-lt v2, v1, :cond_5

    .line 187
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    add-int/lit8 v1, v2, 0x1

    goto :goto_1

    .line 193
    :cond_5
    if-eqz p3, :cond_6

    .line 195
    add-int v4, p1, v1

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    add-int/2addr v1, p1

    goto :goto_1

    .line 200
    :cond_6
    add-int v4, p1, v1

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 201
    if-ltz v2, :cond_7

    .line 202
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    add-int/lit8 v1, v2, 0x1

    goto :goto_1

    .line 206
    :cond_7
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    move v1, v0

    goto :goto_1
.end method
