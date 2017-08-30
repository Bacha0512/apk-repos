.class public final enum Lorg/abtollc/sdk/OnCallHeldListener$HoldState;
.super Ljava/lang/Enum;
.source "OnCallHeldListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/abtollc/sdk/OnCallHeldListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HoldState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/abtollc/sdk/OnCallHeldListener$HoldState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/abtollc/sdk/OnCallHeldListener$HoldState;

.field public static final enum ACTIVE:Lorg/abtollc/sdk/OnCallHeldListener$HoldState;

.field public static final enum ERROR:Lorg/abtollc/sdk/OnCallHeldListener$HoldState;

.field public static final enum LOCAL_HOLD:Lorg/abtollc/sdk/OnCallHeldListener$HoldState;

.field public static final enum NONE:Lorg/abtollc/sdk/OnCallHeldListener$HoldState;

.field public static final enum REMOTE_HOLD:Lorg/abtollc/sdk/OnCallHeldListener$HoldState;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lorg/abtollc/sdk/OnCallHeldListener$HoldState;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2, v2}, Lorg/abtollc/sdk/OnCallHeldListener$HoldState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/abtollc/sdk/OnCallHeldListener$HoldState;->NONE:Lorg/abtollc/sdk/OnCallHeldListener$HoldState;

    .line 16
    new-instance v0, Lorg/abtollc/sdk/OnCallHeldListener$HoldState;

    const-string v1, "ACTIVE"

    invoke-direct {v0, v1, v3, v3}, Lorg/abtollc/sdk/OnCallHeldListener$HoldState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/abtollc/sdk/OnCallHeldListener$HoldState;->ACTIVE:Lorg/abtollc/sdk/OnCallHeldListener$HoldState;

    .line 17
    new-instance v0, Lorg/abtollc/sdk/OnCallHeldListener$HoldState;

    const-string v1, "LOCAL_HOLD"

    invoke-direct {v0, v1, v4, v4}, Lorg/abtollc/sdk/OnCallHeldListener$HoldState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/abtollc/sdk/OnCallHeldListener$HoldState;->LOCAL_HOLD:Lorg/abtollc/sdk/OnCallHeldListener$HoldState;

    .line 18
    new-instance v0, Lorg/abtollc/sdk/OnCallHeldListener$HoldState;

    const-string v1, "REMOTE_HOLD"

    invoke-direct {v0, v1, v5, v5}, Lorg/abtollc/sdk/OnCallHeldListener$HoldState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/abtollc/sdk/OnCallHeldListener$HoldState;->REMOTE_HOLD:Lorg/abtollc/sdk/OnCallHeldListener$HoldState;

    .line 19
    new-instance v0, Lorg/abtollc/sdk/OnCallHeldListener$HoldState;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v6, v6}, Lorg/abtollc/sdk/OnCallHeldListener$HoldState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/abtollc/sdk/OnCallHeldListener$HoldState;->ERROR:Lorg/abtollc/sdk/OnCallHeldListener$HoldState;

    .line 14
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/abtollc/sdk/OnCallHeldListener$HoldState;

    sget-object v1, Lorg/abtollc/sdk/OnCallHeldListener$HoldState;->NONE:Lorg/abtollc/sdk/OnCallHeldListener$HoldState;

    aput-object v1, v0, v2

    sget-object v1, Lorg/abtollc/sdk/OnCallHeldListener$HoldState;->ACTIVE:Lorg/abtollc/sdk/OnCallHeldListener$HoldState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/abtollc/sdk/OnCallHeldListener$HoldState;->LOCAL_HOLD:Lorg/abtollc/sdk/OnCallHeldListener$HoldState;

    aput-object v1, v0, v4

    sget-object v1, Lorg/abtollc/sdk/OnCallHeldListener$HoldState;->REMOTE_HOLD:Lorg/abtollc/sdk/OnCallHeldListener$HoldState;

    aput-object v1, v0, v5

    sget-object v1, Lorg/abtollc/sdk/OnCallHeldListener$HoldState;->ERROR:Lorg/abtollc/sdk/OnCallHeldListener$HoldState;

    aput-object v1, v0, v6

    sput-object v0, Lorg/abtollc/sdk/OnCallHeldListener$HoldState;->$VALUES:[Lorg/abtollc/sdk/OnCallHeldListener$HoldState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput p3, p0, Lorg/abtollc/sdk/OnCallHeldListener$HoldState;->value:I

    .line 25
    return-void
.end method

.method public static getByValue(I)Lorg/abtollc/sdk/OnCallHeldListener$HoldState;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 32
    invoke-static {}, Lorg/abtollc/sdk/OnCallHeldListener$HoldState;->values()[Lorg/abtollc/sdk/OnCallHeldListener$HoldState;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 33
    .local v0, "st":Lorg/abtollc/sdk/OnCallHeldListener$HoldState;
    invoke-virtual {v0}, Lorg/abtollc/sdk/OnCallHeldListener$HoldState;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 37
    .end local v0    # "st":Lorg/abtollc/sdk/OnCallHeldListener$HoldState;
    :goto_1
    return-object v0

    .line 32
    .restart local v0    # "st":Lorg/abtollc/sdk/OnCallHeldListener$HoldState;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    .end local v0    # "st":Lorg/abtollc/sdk/OnCallHeldListener$HoldState;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/abtollc/sdk/OnCallHeldListener$HoldState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lorg/abtollc/sdk/OnCallHeldListener$HoldState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/abtollc/sdk/OnCallHeldListener$HoldState;

    return-object v0
.end method

.method public static values()[Lorg/abtollc/sdk/OnCallHeldListener$HoldState;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lorg/abtollc/sdk/OnCallHeldListener$HoldState;->$VALUES:[Lorg/abtollc/sdk/OnCallHeldListener$HoldState;

    invoke-virtual {v0}, [Lorg/abtollc/sdk/OnCallHeldListener$HoldState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/abtollc/sdk/OnCallHeldListener$HoldState;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lorg/abtollc/sdk/OnCallHeldListener$HoldState;->value:I

    return v0
.end method
