.class public final enum Lorg/abtollc/jni/pjsip_event_id_e;
.super Ljava/lang/Enum;
.source "pjsip_event_id_e.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/abtollc/jni/pjsip_event_id_e$SwigNext;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/abtollc/jni/pjsip_event_id_e;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/abtollc/jni/pjsip_event_id_e;

.field public static final enum PJSIP_EVENT_RX_MSG:Lorg/abtollc/jni/pjsip_event_id_e;

.field public static final enum PJSIP_EVENT_TIMER:Lorg/abtollc/jni/pjsip_event_id_e;

.field public static final enum PJSIP_EVENT_TRANSPORT_ERROR:Lorg/abtollc/jni/pjsip_event_id_e;

.field public static final enum PJSIP_EVENT_TSX_STATE:Lorg/abtollc/jni/pjsip_event_id_e;

.field public static final enum PJSIP_EVENT_TX_MSG:Lorg/abtollc/jni/pjsip_event_id_e;

.field public static final enum PJSIP_EVENT_UNKNOWN:Lorg/abtollc/jni/pjsip_event_id_e;

.field public static final enum PJSIP_EVENT_USER:Lorg/abtollc/jni/pjsip_event_id_e;


# instance fields
.field private final swigValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lorg/abtollc/jni/pjsip_event_id_e;

    const-string v1, "PJSIP_EVENT_UNKNOWN"

    invoke-direct {v0, v1, v3}, Lorg/abtollc/jni/pjsip_event_id_e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/abtollc/jni/pjsip_event_id_e;->PJSIP_EVENT_UNKNOWN:Lorg/abtollc/jni/pjsip_event_id_e;

    .line 13
    new-instance v0, Lorg/abtollc/jni/pjsip_event_id_e;

    const-string v1, "PJSIP_EVENT_TIMER"

    invoke-direct {v0, v1, v4}, Lorg/abtollc/jni/pjsip_event_id_e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/abtollc/jni/pjsip_event_id_e;->PJSIP_EVENT_TIMER:Lorg/abtollc/jni/pjsip_event_id_e;

    .line 14
    new-instance v0, Lorg/abtollc/jni/pjsip_event_id_e;

    const-string v1, "PJSIP_EVENT_TX_MSG"

    invoke-direct {v0, v1, v5}, Lorg/abtollc/jni/pjsip_event_id_e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/abtollc/jni/pjsip_event_id_e;->PJSIP_EVENT_TX_MSG:Lorg/abtollc/jni/pjsip_event_id_e;

    .line 15
    new-instance v0, Lorg/abtollc/jni/pjsip_event_id_e;

    const-string v1, "PJSIP_EVENT_RX_MSG"

    invoke-direct {v0, v1, v6}, Lorg/abtollc/jni/pjsip_event_id_e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/abtollc/jni/pjsip_event_id_e;->PJSIP_EVENT_RX_MSG:Lorg/abtollc/jni/pjsip_event_id_e;

    .line 16
    new-instance v0, Lorg/abtollc/jni/pjsip_event_id_e;

    const-string v1, "PJSIP_EVENT_TRANSPORT_ERROR"

    invoke-direct {v0, v1, v7}, Lorg/abtollc/jni/pjsip_event_id_e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/abtollc/jni/pjsip_event_id_e;->PJSIP_EVENT_TRANSPORT_ERROR:Lorg/abtollc/jni/pjsip_event_id_e;

    .line 17
    new-instance v0, Lorg/abtollc/jni/pjsip_event_id_e;

    const-string v1, "PJSIP_EVENT_TSX_STATE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/abtollc/jni/pjsip_event_id_e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/abtollc/jni/pjsip_event_id_e;->PJSIP_EVENT_TSX_STATE:Lorg/abtollc/jni/pjsip_event_id_e;

    .line 18
    new-instance v0, Lorg/abtollc/jni/pjsip_event_id_e;

    const-string v1, "PJSIP_EVENT_USER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/abtollc/jni/pjsip_event_id_e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/abtollc/jni/pjsip_event_id_e;->PJSIP_EVENT_USER:Lorg/abtollc/jni/pjsip_event_id_e;

    .line 11
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/abtollc/jni/pjsip_event_id_e;

    sget-object v1, Lorg/abtollc/jni/pjsip_event_id_e;->PJSIP_EVENT_UNKNOWN:Lorg/abtollc/jni/pjsip_event_id_e;

    aput-object v1, v0, v3

    sget-object v1, Lorg/abtollc/jni/pjsip_event_id_e;->PJSIP_EVENT_TIMER:Lorg/abtollc/jni/pjsip_event_id_e;

    aput-object v1, v0, v4

    sget-object v1, Lorg/abtollc/jni/pjsip_event_id_e;->PJSIP_EVENT_TX_MSG:Lorg/abtollc/jni/pjsip_event_id_e;

    aput-object v1, v0, v5

    sget-object v1, Lorg/abtollc/jni/pjsip_event_id_e;->PJSIP_EVENT_RX_MSG:Lorg/abtollc/jni/pjsip_event_id_e;

    aput-object v1, v0, v6

    sget-object v1, Lorg/abtollc/jni/pjsip_event_id_e;->PJSIP_EVENT_TRANSPORT_ERROR:Lorg/abtollc/jni/pjsip_event_id_e;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/abtollc/jni/pjsip_event_id_e;->PJSIP_EVENT_TSX_STATE:Lorg/abtollc/jni/pjsip_event_id_e;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/abtollc/jni/pjsip_event_id_e;->PJSIP_EVENT_USER:Lorg/abtollc/jni/pjsip_event_id_e;

    aput-object v2, v0, v1

    sput-object v0, Lorg/abtollc/jni/pjsip_event_id_e;->$VALUES:[Lorg/abtollc/jni/pjsip_event_id_e;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    # operator++ for: Lorg/abtollc/jni/pjsip_event_id_e$SwigNext;->next:I
    invoke-static {}, Lorg/abtollc/jni/pjsip_event_id_e$SwigNext;->access$008()I

    move-result v0

    iput v0, p0, Lorg/abtollc/jni/pjsip_event_id_e;->swigValue:I

    .line 37
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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Lorg/abtollc/jni/pjsip_event_id_e;->swigValue:I

    .line 42
    add-int/lit8 v0, p3, 0x1

    # setter for: Lorg/abtollc/jni/pjsip_event_id_e$SwigNext;->next:I
    invoke-static {v0}, Lorg/abtollc/jni/pjsip_event_id_e$SwigNext;->access$002(I)I

    .line 43
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/abtollc/jni/pjsip_event_id_e;)V
    .locals 1
    .param p3, "swigEnum"    # Lorg/abtollc/jni/pjsip_event_id_e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/abtollc/jni/pjsip_event_id_e;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iget v0, p3, Lorg/abtollc/jni/pjsip_event_id_e;->swigValue:I

    iput v0, p0, Lorg/abtollc/jni/pjsip_event_id_e;->swigValue:I

    .line 48
    iget v0, p0, Lorg/abtollc/jni/pjsip_event_id_e;->swigValue:I

    add-int/lit8 v0, v0, 0x1

    # setter for: Lorg/abtollc/jni/pjsip_event_id_e$SwigNext;->next:I
    invoke-static {v0}, Lorg/abtollc/jni/pjsip_event_id_e$SwigNext;->access$002(I)I

    .line 49
    return-void
.end method

.method public static swigToEnum(I)Lorg/abtollc/jni/pjsip_event_id_e;
    .locals 5
    .param p0, "swigValue"    # I

    .prologue
    .line 25
    const-class v2, Lorg/abtollc/jni/pjsip_event_id_e;

    invoke-virtual {v2}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/abtollc/jni/pjsip_event_id_e;

    .line 26
    .local v1, "swigValues":[Lorg/abtollc/jni/pjsip_event_id_e;
    array-length v2, v1

    if-ge p0, v2, :cond_1

    if-ltz p0, :cond_1

    aget-object v2, v1, p0

    iget v2, v2, Lorg/abtollc/jni/pjsip_event_id_e;->swigValue:I

    if-ne v2, p0, :cond_1

    .line 27
    aget-object v0, v1, p0

    .line 30
    :cond_0
    return-object v0

    .line 28
    :cond_1
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    .line 29
    .local v0, "swigEnum":Lorg/abtollc/jni/pjsip_event_id_e;
    iget v4, v0, Lorg/abtollc/jni/pjsip_event_id_e;->swigValue:I

    if-eq v4, p0, :cond_0

    .line 28
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 31
    .end local v0    # "swigEnum":Lorg/abtollc/jni/pjsip_event_id_e;
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No enum "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Lorg/abtollc/jni/pjsip_event_id_e;

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

.method public static valueOf(Ljava/lang/String;)Lorg/abtollc/jni/pjsip_event_id_e;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lorg/abtollc/jni/pjsip_event_id_e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/abtollc/jni/pjsip_event_id_e;

    return-object v0
.end method

.method public static values()[Lorg/abtollc/jni/pjsip_event_id_e;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lorg/abtollc/jni/pjsip_event_id_e;->$VALUES:[Lorg/abtollc/jni/pjsip_event_id_e;

    invoke-virtual {v0}, [Lorg/abtollc/jni/pjsip_event_id_e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/abtollc/jni/pjsip_event_id_e;

    return-object v0
.end method


# virtual methods
.method public final swigValue()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lorg/abtollc/jni/pjsip_event_id_e;->swigValue:I

    return v0
.end method
