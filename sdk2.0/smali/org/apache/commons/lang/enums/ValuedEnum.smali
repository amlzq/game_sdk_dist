.class public abstract Lorg/apache/commons/lang/enums/ValuedEnum;
.super Lorg/apache/commons/lang/enums/Enum;
.source "ValuedEnum.java"


# static fields
.field private static final serialVersionUID:J = -0x62f19b5ff54bca1dL


# instance fields
.field private final iValue:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lorg/apache/commons/lang/enums/Enum;-><init>(Ljava/lang/String;)V

    .line 128
    iput p2, p0, Lorg/apache/commons/lang/enums/ValuedEnum;->iValue:I

    .line 129
    return-void
.end method

.method protected static getEnum(Ljava/lang/Class;I)Lorg/apache/commons/lang/enums/Enum;
    .locals 5
    .param p0, "enumClass"    # Ljava/lang/Class;
    .param p1, "value"    # I

    .prologue
    .line 144
    if-nez p0, :cond_0

    .line 145
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The Enum Class must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 147
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang/enums/Enum;->getEnumList(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 148
    .local v2, "list":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 154
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 149
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang/enums/ValuedEnum;

    .line 150
    .local v0, "enumeration":Lorg/apache/commons/lang/enums/ValuedEnum;
    invoke-virtual {v0}, Lorg/apache/commons/lang/enums/ValuedEnum;->getValue()I

    move-result v3

    if-ne v3, p1, :cond_1

    goto :goto_0
.end method

.method private getValueInOtherClassLoader(Ljava/lang/Object;)I
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 205
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getValue"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 206
    .local v1, "mth":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 207
    .local v2, "value":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    return v3

    .line 208
    .end local v1    # "mth":Ljava/lang/reflect/Method;
    .end local v2    # "value":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 215
    :goto_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "This should not happen"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 210
    :catch_1
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 184
    if-ne p1, p0, :cond_0

    .line 185
    const/4 v0, 0x0

    .line 194
    .end local p1    # "other":Ljava/lang/Object;
    :goto_0
    return v0

    .line 187
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 188
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

    .line 189
    iget v0, p0, Lorg/apache/commons/lang/enums/ValuedEnum;->iValue:I

    invoke-direct {p0, p1}, Lorg/apache/commons/lang/enums/ValuedEnum;->getValueInOtherClassLoader(Ljava/lang/Object;)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 191
    :cond_1
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Different enum class \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/lang/ClassUtils;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_2
    iget v0, p0, Lorg/apache/commons/lang/enums/ValuedEnum;->iValue:I

    check-cast p1, Lorg/apache/commons/lang/enums/ValuedEnum;

    .end local p1    # "other":Ljava/lang/Object;
    iget v1, p1, Lorg/apache/commons/lang/enums/ValuedEnum;->iValue:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public final getValue()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lorg/apache/commons/lang/enums/ValuedEnum;->iValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 226
    iget-object v1, p0, Lorg/apache/commons/lang/enums/Enum;->iToString:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 227
    invoke-virtual {p0}, Lorg/apache/commons/lang/enums/Enum;->getEnumClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/lang/ClassUtils;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "shortName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/lang/enums/Enum;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/lang/enums/ValuedEnum;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/lang/enums/Enum;->iToString:Ljava/lang/String;

    .line 230
    .end local v0    # "shortName":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/lang/enums/Enum;->iToString:Ljava/lang/String;

    return-object v1
.end method
