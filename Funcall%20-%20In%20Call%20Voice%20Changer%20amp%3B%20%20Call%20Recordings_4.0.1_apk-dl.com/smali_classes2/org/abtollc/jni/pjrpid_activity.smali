.class public final enum Lorg/abtollc/jni/pjrpid_activity;
.super Ljava/lang/Enum;
.source "pjrpid_activity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/abtollc/jni/pjrpid_activity$SwigNext;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/abtollc/jni/pjrpid_activity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/abtollc/jni/pjrpid_activity;

.field public static final enum PJRPID_ACTIVITY_AWAY:Lorg/abtollc/jni/pjrpid_activity;

.field public static final enum PJRPID_ACTIVITY_BUSY:Lorg/abtollc/jni/pjrpid_activity;

.field public static final enum PJRPID_ACTIVITY_UNKNOWN:Lorg/abtollc/jni/pjrpid_activity;


# instance fields
.field private final swigValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lorg/abtollc/jni/pjrpid_activity;

    const-string v1, "PJRPID_ACTIVITY_UNKNOWN"

    invoke-direct {v0, v1, v2}, Lorg/abtollc/jni/pjrpid_activity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/abtollc/jni/pjrpid_activity;->PJRPID_ACTIVITY_UNKNOWN:Lorg/abtollc/jni/pjrpid_activity;

    .line 13
    new-instance v0, Lorg/abtollc/jni/pjrpid_activity;

    const-string v1, "PJRPID_ACTIVITY_AWAY"

    invoke-direct {v0, v1, v3}, Lorg/abtollc/jni/pjrpid_activity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/abtollc/jni/pjrpid_activity;->PJRPID_ACTIVITY_AWAY:Lorg/abtollc/jni/pjrpid_activity;

    .line 14
    new-instance v0, Lorg/abtollc/jni/pjrpid_activity;

    const-string v1, "PJRPID_ACTIVITY_BUSY"

    invoke-direct {v0, v1, v4}, Lorg/abtollc/jni/pjrpid_activity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/abtollc/jni/pjrpid_activity;->PJRPID_ACTIVITY_BUSY:Lorg/abtollc/jni/pjrpid_activity;

    .line 11
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/abtollc/jni/pjrpid_activity;

    sget-object v1, Lorg/abtollc/jni/pjrpid_activity;->PJRPID_ACTIVITY_UNKNOWN:Lorg/abtollc/jni/pjrpid_activity;

    aput-object v1, v0, v2

    sget-object v1, Lorg/abtollc/jni/pjrpid_activity;->PJRPID_ACTIVITY_AWAY:Lorg/abtollc/jni/pjrpid_activity;

    aput-object v1, v0, v3

    sget-object v1, Lorg/abtollc/jni/pjrpid_activity;->PJRPID_ACTIVITY_BUSY:Lorg/abtollc/jni/pjrpid_activity;

    aput-object v1, v0, v4

    sput-object v0, Lorg/abtollc/jni/pjrpid_activity;->$VALUES:[Lorg/abtollc/jni/pjrpid_activity;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    # operator++ for: Lorg/abtollc/jni/pjrpid_activity$SwigNext;->next:I
    invoke-static {}, Lorg/abtollc/jni/pjrpid_activity$SwigNext;->access$008()I

    move-result v0

    iput v0, p0, Lorg/abtollc/jni/pjrpid_activity;->swigValue:I

    .line 33
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
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput p3, p0, Lorg/abtollc/jni/pjrpid_activity;->swigValue:I

    .line 38
    add-int/lit8 v0, p3, 0x1

    # setter for: Lorg/abtollc/jni/pjrpid_activity$SwigNext;->next:I
    invoke-static {v0}, Lorg/abtollc/jni/pjrpid_activity$SwigNext;->access$002(I)I

    .line 39
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/abtollc/jni/pjrpid_activity;)V
    .locals 1
    .param p3, "swigEnum"    # Lorg/abtollc/jni/pjrpid_activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/abtollc/jni/pjrpid_activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iget v0, p3, Lorg/abtollc/jni/pjrpid_activity;->swigValue:I

    iput v0, p0, Lorg/abtollc/jni/pjrpid_activity;->swigValue:I

    .line 44
    iget v0, p0, Lorg/abtollc/jni/pjrpid_activity;->swigValue:I

    add-int/lit8 v0, v0, 0x1

    # setter for: Lorg/abtollc/jni/pjrpid_activity$SwigNext;->next:I
    invoke-static {v0}, Lorg/abtollc/jni/pjrpid_activity$SwigNext;->access$002(I)I

    .line 45
    return-void
.end method

.method public static swigToEnum(I)Lorg/abtollc/jni/pjrpid_activity;
    .locals 5
    .param p0, "swigValue"    # I

    .prologue
    .line 21
    const-class v2, Lorg/abtollc/jni/pjrpid_activity;

    invoke-virtual {v2}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/abtollc/jni/pjrpid_activity;

    .line 22
    .local v1, "swigValues":[Lorg/abtollc/jni/pjrpid_activity;
    array-length v2, v1

    if-ge p0, v2, :cond_1

    if-ltz p0, :cond_1

    aget-object v2, v1, p0

    iget v2, v2, Lorg/abtollc/jni/pjrpid_activity;->swigValue:I

    if-ne v2, p0, :cond_1

    .line 23
    aget-object v0, v1, p0

    .line 26
    :cond_0
    return-object v0

    .line 24
    :cond_1
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    .line 25
    .local v0, "swigEnum":Lorg/abtollc/jni/pjrpid_activity;
    iget v4, v0, Lorg/abtollc/jni/pjrpid_activity;->swigValue:I

    if-eq v4, p0, :cond_0

    .line 24
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 27
    .end local v0    # "swigEnum":Lorg/abtollc/jni/pjrpid_activity;
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No enum "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Lorg/abtollc/jni/pjrpid_activity;

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

.method public static valueOf(Ljava/lang/String;)Lorg/abtollc/jni/pjrpid_activity;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lorg/abtollc/jni/pjrpid_activity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/abtollc/jni/pjrpid_activity;

    return-object v0
.end method

.method public static values()[Lorg/abtollc/jni/pjrpid_activity;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lorg/abtollc/jni/pjrpid_activity;->$VALUES:[Lorg/abtollc/jni/pjrpid_activity;

    invoke-virtual {v0}, [Lorg/abtollc/jni/pjrpid_activity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/abtollc/jni/pjrpid_activity;

    return-object v0
.end method


# virtual methods
.method public final swigValue()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lorg/abtollc/jni/pjrpid_activity;->swigValue:I

    return v0
.end method
