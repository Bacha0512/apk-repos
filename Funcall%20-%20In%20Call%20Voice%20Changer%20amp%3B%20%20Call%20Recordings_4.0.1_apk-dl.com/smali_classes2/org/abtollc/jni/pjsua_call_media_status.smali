.class public final enum Lorg/abtollc/jni/pjsua_call_media_status;
.super Ljava/lang/Enum;
.source "pjsua_call_media_status.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/abtollc/jni/pjsua_call_media_status$SwigNext;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/abtollc/jni/pjsua_call_media_status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/abtollc/jni/pjsua_call_media_status;

.field public static final enum PJSUA_CALL_MEDIA_ACTIVE:Lorg/abtollc/jni/pjsua_call_media_status;

.field public static final enum PJSUA_CALL_MEDIA_ERROR:Lorg/abtollc/jni/pjsua_call_media_status;

.field public static final enum PJSUA_CALL_MEDIA_LOCAL_HOLD:Lorg/abtollc/jni/pjsua_call_media_status;

.field public static final enum PJSUA_CALL_MEDIA_NONE:Lorg/abtollc/jni/pjsua_call_media_status;

.field public static final enum PJSUA_CALL_MEDIA_REMOTE_HOLD:Lorg/abtollc/jni/pjsua_call_media_status;


# instance fields
.field private final swigValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lorg/abtollc/jni/pjsua_call_media_status;

    const-string v1, "PJSUA_CALL_MEDIA_NONE"

    invoke-direct {v0, v1, v2}, Lorg/abtollc/jni/pjsua_call_media_status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/abtollc/jni/pjsua_call_media_status;->PJSUA_CALL_MEDIA_NONE:Lorg/abtollc/jni/pjsua_call_media_status;

    .line 13
    new-instance v0, Lorg/abtollc/jni/pjsua_call_media_status;

    const-string v1, "PJSUA_CALL_MEDIA_ACTIVE"

    invoke-direct {v0, v1, v3}, Lorg/abtollc/jni/pjsua_call_media_status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/abtollc/jni/pjsua_call_media_status;->PJSUA_CALL_MEDIA_ACTIVE:Lorg/abtollc/jni/pjsua_call_media_status;

    .line 14
    new-instance v0, Lorg/abtollc/jni/pjsua_call_media_status;

    const-string v1, "PJSUA_CALL_MEDIA_LOCAL_HOLD"

    invoke-direct {v0, v1, v4}, Lorg/abtollc/jni/pjsua_call_media_status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/abtollc/jni/pjsua_call_media_status;->PJSUA_CALL_MEDIA_LOCAL_HOLD:Lorg/abtollc/jni/pjsua_call_media_status;

    .line 15
    new-instance v0, Lorg/abtollc/jni/pjsua_call_media_status;

    const-string v1, "PJSUA_CALL_MEDIA_REMOTE_HOLD"

    invoke-direct {v0, v1, v5}, Lorg/abtollc/jni/pjsua_call_media_status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/abtollc/jni/pjsua_call_media_status;->PJSUA_CALL_MEDIA_REMOTE_HOLD:Lorg/abtollc/jni/pjsua_call_media_status;

    .line 16
    new-instance v0, Lorg/abtollc/jni/pjsua_call_media_status;

    const-string v1, "PJSUA_CALL_MEDIA_ERROR"

    invoke-direct {v0, v1, v6}, Lorg/abtollc/jni/pjsua_call_media_status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/abtollc/jni/pjsua_call_media_status;->PJSUA_CALL_MEDIA_ERROR:Lorg/abtollc/jni/pjsua_call_media_status;

    .line 11
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/abtollc/jni/pjsua_call_media_status;

    sget-object v1, Lorg/abtollc/jni/pjsua_call_media_status;->PJSUA_CALL_MEDIA_NONE:Lorg/abtollc/jni/pjsua_call_media_status;

    aput-object v1, v0, v2

    sget-object v1, Lorg/abtollc/jni/pjsua_call_media_status;->PJSUA_CALL_MEDIA_ACTIVE:Lorg/abtollc/jni/pjsua_call_media_status;

    aput-object v1, v0, v3

    sget-object v1, Lorg/abtollc/jni/pjsua_call_media_status;->PJSUA_CALL_MEDIA_LOCAL_HOLD:Lorg/abtollc/jni/pjsua_call_media_status;

    aput-object v1, v0, v4

    sget-object v1, Lorg/abtollc/jni/pjsua_call_media_status;->PJSUA_CALL_MEDIA_REMOTE_HOLD:Lorg/abtollc/jni/pjsua_call_media_status;

    aput-object v1, v0, v5

    sget-object v1, Lorg/abtollc/jni/pjsua_call_media_status;->PJSUA_CALL_MEDIA_ERROR:Lorg/abtollc/jni/pjsua_call_media_status;

    aput-object v1, v0, v6

    sput-object v0, Lorg/abtollc/jni/pjsua_call_media_status;->$VALUES:[Lorg/abtollc/jni/pjsua_call_media_status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    # operator++ for: Lorg/abtollc/jni/pjsua_call_media_status$SwigNext;->next:I
    invoke-static {}, Lorg/abtollc/jni/pjsua_call_media_status$SwigNext;->access$008()I

    move-result v0

    iput v0, p0, Lorg/abtollc/jni/pjsua_call_media_status;->swigValue:I

    .line 35
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "swigValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput p3, p0, Lorg/abtollc/jni/pjsua_call_media_status;->swigValue:I

    .line 40
    add-int/lit8 v0, p3, 0x1

    # setter for: Lorg/abtollc/jni/pjsua_call_media_status$SwigNext;->next:I
    invoke-static {v0}, Lorg/abtollc/jni/pjsua_call_media_status$SwigNext;->access$002(I)I

    .line 41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/abtollc/jni/pjsua_call_media_status;)V
    .locals 1
    .param p3, "swigEnum"    # Lorg/abtollc/jni/pjsua_call_media_status;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/abtollc/jni/pjsua_call_media_status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iget v0, p3, Lorg/abtollc/jni/pjsua_call_media_status;->swigValue:I

    iput v0, p0, Lorg/abtollc/jni/pjsua_call_media_status;->swigValue:I

    .line 46
    iget v0, p0, Lorg/abtollc/jni/pjsua_call_media_status;->swigValue:I

    add-int/lit8 v0, v0, 0x1

    # setter for: Lorg/abtollc/jni/pjsua_call_media_status$SwigNext;->next:I
    invoke-static {v0}, Lorg/abtollc/jni/pjsua_call_media_status$SwigNext;->access$002(I)I

    .line 47
    return-void
.end method

.method public static swigToEnum(I)Lorg/abtollc/jni/pjsua_call_media_status;
    .locals 5
    .param p0, "swigValue"    # I

    .prologue
    .line 23
    const-class v2, Lorg/abtollc/jni/pjsua_call_media_status;

    invoke-virtual {v2}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/abtollc/jni/pjsua_call_media_status;

    .line 24
    .local v1, "swigValues":[Lorg/abtollc/jni/pjsua_call_media_status;
    array-length v2, v1

    if-ge p0, v2, :cond_1

    if-ltz p0, :cond_1

    aget-object v2, v1, p0

    iget v2, v2, Lorg/abtollc/jni/pjsua_call_media_status;->swigValue:I

    if-ne v2, p0, :cond_1

    .line 25
    aget-object v0, v1, p0

    .line 28
    :cond_0
    return-object v0

    .line 26
    :cond_1
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    .line 27
    .local v0, "swigEnum":Lorg/abtollc/jni/pjsua_call_media_status;
    iget v4, v0, Lorg/abtollc/jni/pjsua_call_media_status;->swigValue:I

    if-eq v4, p0, :cond_0

    .line 26
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 29
    .end local v0    # "swigEnum":Lorg/abtollc/jni/pjsua_call_media_status;
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No enum "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Lorg/abtollc/jni/pjsua_call_media_status;

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
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/abtollc/jni/pjsua_call_media_status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lorg/abtollc/jni/pjsua_call_media_status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/abtollc/jni/pjsua_call_media_status;

    return-object v0
.end method

.method public static values()[Lorg/abtollc/jni/pjsua_call_media_status;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lorg/abtollc/jni/pjsua_call_media_status;->$VALUES:[Lorg/abtollc/jni/pjsua_call_media_status;

    invoke-virtual {v0}, [Lorg/abtollc/jni/pjsua_call_media_status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/abtollc/jni/pjsua_call_media_status;

    return-object v0
.end method


# virtual methods
.method public final swigValue()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lorg/abtollc/jni/pjsua_call_media_status;->swigValue:I

    return v0
.end method
