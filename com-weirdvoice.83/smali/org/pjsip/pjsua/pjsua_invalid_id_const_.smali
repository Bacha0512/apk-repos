.class public final enum Lorg/pjsip/pjsua/pjsua_invalid_id_const_;
.super Ljava/lang/Enum;
.source "pjsua_invalid_id_const_.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/pjsip/pjsua/pjsua_invalid_id_const_$SwigNext;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/pjsip/pjsua/pjsua_invalid_id_const_;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/pjsip/pjsua/pjsua_invalid_id_const_;

.field public static final enum PJSUA_INVALID_ID:Lorg/pjsip/pjsua/pjsua_invalid_id_const_;


# instance fields
.field private final swigValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 12
    new-instance v0, Lorg/pjsip/pjsua/pjsua_invalid_id_const_;

    const-string v1, "PJSUA_INVALID_ID"

    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->PJSUA_INVALID_ID_get()I

    move-result v2

    invoke-direct {v0, v1, v3, v2}, Lorg/pjsip/pjsua/pjsua_invalid_id_const_;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/pjsip/pjsua/pjsua_invalid_id_const_;->PJSUA_INVALID_ID:Lorg/pjsip/pjsua/pjsua_invalid_id_const_;

    .line 11
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/pjsip/pjsua/pjsua_invalid_id_const_;

    sget-object v1, Lorg/pjsip/pjsua/pjsua_invalid_id_const_;->PJSUA_INVALID_ID:Lorg/pjsip/pjsua/pjsua_invalid_id_const_;

    aput-object v1, v0, v3

    sput-object v0, Lorg/pjsip/pjsua/pjsua_invalid_id_const_;->ENUM$VALUES:[Lorg/pjsip/pjsua/pjsua_invalid_id_const_;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    # getter for: Lorg/pjsip/pjsua/pjsua_invalid_id_const_$SwigNext;->next:I
    invoke-static {}, Lorg/pjsip/pjsua/pjsua_invalid_id_const_$SwigNext;->access$0()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Lorg/pjsip/pjsua/pjsua_invalid_id_const_$SwigNext;->access$1(I)V

    iput v0, p0, Lorg/pjsip/pjsua/pjsua_invalid_id_const_;->swigValue:I

    .line 31
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "swigValue"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Lorg/pjsip/pjsua/pjsua_invalid_id_const_;->swigValue:I

    .line 36
    add-int/lit8 v0, p3, 0x1

    invoke-static {v0}, Lorg/pjsip/pjsua/pjsua_invalid_id_const_$SwigNext;->access$1(I)V

    .line 37
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/pjsip/pjsua/pjsua_invalid_id_const_;)V
    .locals 1
    .param p3, "swigEnum"    # Lorg/pjsip/pjsua/pjsua_invalid_id_const_;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iget v0, p3, Lorg/pjsip/pjsua/pjsua_invalid_id_const_;->swigValue:I

    iput v0, p0, Lorg/pjsip/pjsua/pjsua_invalid_id_const_;->swigValue:I

    .line 42
    iget v0, p0, Lorg/pjsip/pjsua/pjsua_invalid_id_const_;->swigValue:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lorg/pjsip/pjsua/pjsua_invalid_id_const_$SwigNext;->access$1(I)V

    .line 43
    return-void
.end method

.method public static swigToEnum(I)Lorg/pjsip/pjsua/pjsua_invalid_id_const_;
    .locals 5
    .param p0, "swigValue"    # I

    .prologue
    .line 19
    const-class v2, Lorg/pjsip/pjsua/pjsua_invalid_id_const_;

    invoke-virtual {v2}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/pjsip/pjsua/pjsua_invalid_id_const_;

    .line 20
    .local v1, "swigValues":[Lorg/pjsip/pjsua/pjsua_invalid_id_const_;
    array-length v2, v1

    if-ge p0, v2, :cond_1

    if-ltz p0, :cond_1

    aget-object v2, v1, p0

    iget v2, v2, Lorg/pjsip/pjsua/pjsua_invalid_id_const_;->swigValue:I

    if-ne v2, p0, :cond_1

    .line 21
    aget-object v0, v1, p0

    .line 24
    :cond_0
    return-object v0

    .line 22
    :cond_1
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_2

    .line 25
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No enum "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v4, Lorg/pjsip/pjsua/pjsua_invalid_id_const_;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 22
    :cond_2
    aget-object v0, v1, v2

    .line 23
    .local v0, "swigEnum":Lorg/pjsip/pjsua/pjsua_invalid_id_const_;
    iget v4, v0, Lorg/pjsip/pjsua/pjsua_invalid_id_const_;->swigValue:I

    if-eq v4, p0, :cond_0

    .line 22
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/pjsip/pjsua/pjsua_invalid_id_const_;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/pjsip/pjsua/pjsua_invalid_id_const_;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/pjsip/pjsua/pjsua_invalid_id_const_;

    return-object v0
.end method

.method public static values()[Lorg/pjsip/pjsua/pjsua_invalid_id_const_;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/pjsip/pjsua/pjsua_invalid_id_const_;->ENUM$VALUES:[Lorg/pjsip/pjsua/pjsua_invalid_id_const_;

    array-length v1, v0

    new-array v2, v1, [Lorg/pjsip/pjsua/pjsua_invalid_id_const_;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final swigValue()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lorg/pjsip/pjsua/pjsua_invalid_id_const_;->swigValue:I

    return v0
.end method
