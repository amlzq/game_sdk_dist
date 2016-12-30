.class public abstract Lorg/apache/commons/lang/enum/Enum;
.super Ljava/lang/Object;
.source "Enum.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang/enum/Enum$Entry;
    }
.end annotation


# static fields
.field private static final EMPTY_MAP:Ljava/util/Map;

.field private static final cEnumClasses:Ljava/util/Map;

.field static class$org$apache$commons$lang$enum$Enum:Ljava/lang/Class; = null

.field static class$org$apache$commons$lang$enum$ValuedEnum:Ljava/lang/Class; = null

.field private static final serialVersionUID:J = -0x6c255b64ccea986L


# instance fields
.field private final transient iHashCode:I

.field private final iName:Ljava/lang/String;

.field protected transient iToString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 253
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/enum/Enum;->EMPTY_MAP:Ljava/util/Map;

    .line 258
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/enum/Enum;->cEnumClasses:Ljava/util/Map;

    .line 253
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/enum/Enum;->iToString:Ljava/lang/String;

    .line 317
    invoke-direct {p0, p1}, Lorg/apache/commons/lang/enum/Enum;->init(Ljava/lang/String;)V

    .line 318
    iput-object p1, p0, Lorg/apache/commons/lang/enum/Enum;->iName:Ljava/lang/String;

    .line 319
    invoke-virtual {p0}, Lorg/apache/commons/lang/enum/Enum;->getEnumClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang/enum/Enum;->iHashCode:I

    .line 321
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 279
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static createEntry(Ljava/lang/Class;)Lorg/apache/commons/lang/enum/Enum$Entry;
    .locals 5
    .param p0, "enumClass"    # Ljava/lang/Class;

    .prologue
    .line 488
    new-instance v1, Lorg/apache/commons/lang/enum/Enum$Entry;

    invoke-direct {v1}, Lorg/apache/commons/lang/enum/Enum$Entry;-><init>()V

    .line 489
    .local v1, "entry":Lorg/apache/commons/lang/enum/Enum$Entry;
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 490
    .local v0, "cls":Ljava/lang/Class;
    :goto_0
    if-eqz v0, :cond_0

    sget-object v3, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$Enum:Ljava/lang/Class;

    if-nez v3, :cond_3

    const-string v3, "org.apache.commons.lang.enum.Enum"

    invoke-static {v3}, Lorg/apache/commons/lang/enum/Enum;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$Enum:Ljava/lang/Class;

    :goto_1
    if-eq v0, v3, :cond_0

    sget-object v3, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$ValuedEnum:Ljava/lang/Class;

    if-nez v3, :cond_4

    const-string v3, "org.apache.commons.lang.enum.ValuedEnum"

    invoke-static {v3}, Lorg/apache/commons/lang/enum/Enum;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$ValuedEnum:Ljava/lang/Class;

    :goto_2
    if-ne v0, v3, :cond_1

    .line 499
    :cond_0
    :goto_3
    return-object v1

    .line 491
    :cond_1
    sget-object v3, Lorg/apache/commons/lang/enum/Enum;->cEnumClasses:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/lang/enum/Enum$Entry;

    .line 492
    .local v2, "loopEntry":Lorg/apache/commons/lang/enum/Enum$Entry;
    if-eqz v2, :cond_2

    .line 493
    iget-object v3, v1, Lorg/apache/commons/lang/enum/Enum$Entry;->list:Ljava/util/List;

    iget-object v4, v2, Lorg/apache/commons/lang/enum/Enum$Entry;->list:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 494
    iget-object v3, v1, Lorg/apache/commons/lang/enum/Enum$Entry;->map:Ljava/util/Map;

    iget-object v4, v2, Lorg/apache/commons/lang/enum/Enum$Entry;->map:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_3

    .line 497
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 490
    .end local v2    # "loopEntry":Lorg/apache/commons/lang/enum/Enum$Entry;
    :cond_3
    sget-object v3, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$Enum:Ljava/lang/Class;

    goto :goto_1

    :cond_4
    sget-object v3, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$ValuedEnum:Ljava/lang/Class;

    goto :goto_2
.end method

.method private static getEntry(Ljava/lang/Class;)Lorg/apache/commons/lang/enum/Enum$Entry;
    .locals 3
    .param p0, "enumClass"    # Ljava/lang/Class;

    .prologue
    .line 469
    if-nez p0, :cond_0

    .line 470
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The Enum Class must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 472
    :cond_0
    sget-object v1, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$Enum:Ljava/lang/Class;

    if-nez v1, :cond_1

    const-string v1, "org.apache.commons.lang.enum.Enum"

    invoke-static {v1}, Lorg/apache/commons/lang/enum/Enum;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$Enum:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 473
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The Class must be a subclass of Enum"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 472
    :cond_1
    sget-object v1, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$Enum:Ljava/lang/Class;

    goto :goto_0

    .line 475
    :cond_2
    sget-object v1, Lorg/apache/commons/lang/enum/Enum;->cEnumClasses:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang/enum/Enum$Entry;

    .line 476
    .local v0, "entry":Lorg/apache/commons/lang/enum/Enum$Entry;
    return-object v0
.end method

.method protected static getEnum(Ljava/lang/Class;Ljava/lang/String;)Lorg/apache/commons/lang/enum/Enum;
    .locals 2
    .param p0, "enumClass"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 393
    invoke-static {p0}, Lorg/apache/commons/lang/enum/Enum;->getEntry(Ljava/lang/Class;)Lorg/apache/commons/lang/enum/Enum$Entry;

    move-result-object v0

    .line 394
    .local v0, "entry":Lorg/apache/commons/lang/enum/Enum$Entry;
    if-nez v0, :cond_0

    .line 395
    const/4 v1, 0x0

    .line 397
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lorg/apache/commons/lang/enum/Enum$Entry;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang/enum/Enum;

    goto :goto_0
.end method

.method protected static getEnumList(Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .param p0, "enumClass"    # Ljava/lang/Class;

    .prologue
    .line 436
    invoke-static {p0}, Lorg/apache/commons/lang/enum/Enum;->getEntry(Ljava/lang/Class;)Lorg/apache/commons/lang/enum/Enum$Entry;

    move-result-object v0

    .line 437
    .local v0, "entry":Lorg/apache/commons/lang/enum/Enum$Entry;
    if-nez v0, :cond_0

    .line 438
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 440
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lorg/apache/commons/lang/enum/Enum$Entry;->unmodifiableList:Ljava/util/List;

    goto :goto_0
.end method

.method protected static getEnumMap(Ljava/lang/Class;)Ljava/util/Map;
    .locals 2
    .param p0, "enumClass"    # Ljava/lang/Class;

    .prologue
    .line 414
    invoke-static {p0}, Lorg/apache/commons/lang/enum/Enum;->getEntry(Ljava/lang/Class;)Lorg/apache/commons/lang/enum/Enum$Entry;

    move-result-object v0

    .line 415
    .local v0, "entry":Lorg/apache/commons/lang/enum/Enum$Entry;
    if-nez v0, :cond_0

    .line 416
    sget-object v1, Lorg/apache/commons/lang/enum/Enum;->EMPTY_MAP:Ljava/util/Map;

    .line 418
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lorg/apache/commons/lang/enum/Enum$Entry;->unmodifiableMap:Ljava/util/Map;

    goto :goto_0
.end method

.method private getNameInOtherClassLoader(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 603
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getName"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 604
    .local v1, "mth":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 605
    .local v2, "name":Ljava/lang/String;
    return-object v2

    .line 606
    .end local v1    # "mth":Ljava/lang/reflect/Method;
    .end local v2    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 613
    :goto_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "This should not happen"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 608
    :catch_1
    move-exception v0

    .line 610
    .local v0, "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v3

    goto :goto_0
.end method

.method private init(Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 331
    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 332
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "The Enum name must not be empty or null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 335
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/lang/enum/Enum;->getEnumClass()Ljava/lang/Class;

    move-result-object v2

    .line 336
    .local v2, "enumClass":Ljava/lang/Class;
    if-nez v2, :cond_1

    .line 337
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "getEnumClass() must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 339
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 340
    .local v0, "cls":Ljava/lang/Class;
    const/4 v3, 0x0

    .line 341
    .local v3, "ok":Z
    :goto_0
    if-eqz v0, :cond_2

    sget-object v4, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$Enum:Ljava/lang/Class;

    if-nez v4, :cond_5

    const-string v4, "org.apache.commons.lang.enum.Enum"

    invoke-static {v4}, Lorg/apache/commons/lang/enum/Enum;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$Enum:Ljava/lang/Class;

    :goto_1
    if-eq v0, v4, :cond_2

    sget-object v4, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$ValuedEnum:Ljava/lang/Class;

    if-nez v4, :cond_6

    const-string v4, "org.apache.commons.lang.enum.ValuedEnum"

    invoke-static {v4}, Lorg/apache/commons/lang/enum/Enum;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$ValuedEnum:Ljava/lang/Class;

    :goto_2
    if-ne v0, v4, :cond_3

    .line 348
    :cond_2
    :goto_3
    if-nez v3, :cond_7

    .line 349
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "getEnumClass() must return a superclass of this class"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 342
    :cond_3
    if-ne v0, v2, :cond_4

    .line 343
    const/4 v3, 0x1

    .line 344
    goto :goto_3

    .line 346
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 341
    :cond_5
    sget-object v4, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$Enum:Ljava/lang/Class;

    goto :goto_1

    :cond_6
    sget-object v4, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$ValuedEnum:Ljava/lang/Class;

    goto :goto_2

    .line 353
    :cond_7
    sget-object v4, Lorg/apache/commons/lang/enum/Enum;->cEnumClasses:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang/enum/Enum$Entry;

    .line 354
    .local v1, "entry":Lorg/apache/commons/lang/enum/Enum$Entry;
    if-nez v1, :cond_8

    .line 355
    invoke-static {v2}, Lorg/apache/commons/lang/enum/Enum;->createEntry(Ljava/lang/Class;)Lorg/apache/commons/lang/enum/Enum$Entry;

    move-result-object v1

    .line 356
    sget-object v4, Lorg/apache/commons/lang/enum/Enum;->cEnumClasses:Ljava/util/Map;

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    :cond_8
    iget-object v4, v1, Lorg/apache/commons/lang/enum/Enum$Entry;->map:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 359
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "The Enum name must be unique, \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\' has already been added"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 361
    :cond_9
    iget-object v4, v1, Lorg/apache/commons/lang/enum/Enum$Entry;->map:Ljava/util/Map;

    invoke-interface {v4, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    iget-object v4, v1, Lorg/apache/commons/lang/enum/Enum$Entry;->list:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    return-void
.end method

.method protected static iterator(Ljava/lang/Class;)Ljava/util/Iterator;
    .locals 1
    .param p0, "enumClass"    # Ljava/lang/Class;

    .prologue
    .line 458
    invoke-static {p0}, Lorg/apache/commons/lang/enum/Enum;->getEnumList(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 584
    if-ne p1, p0, :cond_0

    .line 585
    const/4 v0, 0x0

    .line 592
    .end local p1    # "other":Ljava/lang/Object;
    :goto_0
    return v0

    .line 587
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 588
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 589
    iget-object v0, p0, Lorg/apache/commons/lang/enum/Enum;->iName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/apache/commons/lang/enum/Enum;->getNameInOtherClassLoader(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 592
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/lang/enum/Enum;->iName:Ljava/lang/String;

    check-cast p1, Lorg/apache/commons/lang/enum/Enum;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v1, p1, Lorg/apache/commons/lang/enum/Enum;->iName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 540
    if-ne p1, p0, :cond_1

    .line 541
    const/4 v0, 0x1

    .line 554
    .end local p1    # "other":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 542
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    if-eqz p1, :cond_0

    .line 544
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 548
    iget-object v0, p0, Lorg/apache/commons/lang/enum/Enum;->iName:Ljava/lang/String;

    check-cast p1, Lorg/apache/commons/lang/enum/Enum;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v1, p1, Lorg/apache/commons/lang/enum/Enum;->iName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 551
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 554
    iget-object v0, p0, Lorg/apache/commons/lang/enum/Enum;->iName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/apache/commons/lang/enum/Enum;->getNameInOtherClassLoader(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getEnumClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 523
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lorg/apache/commons/lang/enum/Enum;->iName:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 564
    iget v0, p0, Lorg/apache/commons/lang/enum/Enum;->iHashCode:I

    return v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 372
    sget-object v1, Lorg/apache/commons/lang/enum/Enum;->cEnumClasses:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/apache/commons/lang/enum/Enum;->getEnumClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang/enum/Enum$Entry;

    .line 373
    .local v0, "entry":Lorg/apache/commons/lang/enum/Enum$Entry;
    if-nez v0, :cond_0

    .line 374
    const/4 v1, 0x0

    .line 376
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lorg/apache/commons/lang/enum/Enum$Entry;->map:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/apache/commons/lang/enum/Enum;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 624
    iget-object v1, p0, Lorg/apache/commons/lang/enum/Enum;->iToString:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 625
    invoke-virtual {p0}, Lorg/apache/commons/lang/enum/Enum;->getEnumClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/lang/ClassUtils;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 626
    .local v0, "shortName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/lang/enum/Enum;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/lang/enum/Enum;->iToString:Ljava/lang/String;

    .line 628
    .end local v0    # "shortName":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/lang/enum/Enum;->iToString:Ljava/lang/String;

    return-object v1
.end method
