.class public final enum Lorg/abtollc/sdk/OnInitializeListener$InitializeState;
.super Ljava/lang/Enum;
.source "OnInitializeListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/abtollc/sdk/OnInitializeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InitializeState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/abtollc/sdk/OnInitializeListener$InitializeState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/abtollc/sdk/OnInitializeListener$InitializeState;

.field public static final enum FAIL:Lorg/abtollc/sdk/OnInitializeListener$InitializeState;

.field public static final enum INFO:Lorg/abtollc/sdk/OnInitializeListener$InitializeState;

.field public static final enum START:Lorg/abtollc/sdk/OnInitializeListener$InitializeState;

.field public static final enum SUCCESS:Lorg/abtollc/sdk/OnInitializeListener$InitializeState;

.field public static final enum WARNING:Lorg/abtollc/sdk/OnInitializeListener$InitializeState;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 18
    new-instance v0, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;

    const-string v1, "START"

    invoke-direct {v0, v1, v7, v3}, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;->START:Lorg/abtollc/sdk/OnInitializeListener$InitializeState;

    new-instance v0, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v3, v4}, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;->INFO:Lorg/abtollc/sdk/OnInitializeListener$InitializeState;

    new-instance v0, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;

    const-string v1, "WARNING"

    invoke-direct {v0, v1, v4, v5}, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;->WARNING:Lorg/abtollc/sdk/OnInitializeListener$InitializeState;

    new-instance v0, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v5, v6}, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;->SUCCESS:Lorg/abtollc/sdk/OnInitializeListener$InitializeState;

    new-instance v0, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;

    const-string v1, "FAIL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;->FAIL:Lorg/abtollc/sdk/OnInitializeListener$InitializeState;

    .line 17
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/abtollc/sdk/OnInitializeListener$InitializeState;

    sget-object v1, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;->START:Lorg/abtollc/sdk/OnInitializeListener$InitializeState;

    aput-object v1, v0, v7

    sget-object v1, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;->INFO:Lorg/abtollc/sdk/OnInitializeListener$InitializeState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;->WARNING:Lorg/abtollc/sdk/OnInitializeListener$InitializeState;

    aput-object v1, v0, v4

    sget-object v1, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;->SUCCESS:Lorg/abtollc/sdk/OnInitializeListener$InitializeState;

    aput-object v1, v0, v5

    sget-object v1, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;->FAIL:Lorg/abtollc/sdk/OnInitializeListener$InitializeState;

    aput-object v1, v0, v6

    sput-object v0, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;->$VALUES:[Lorg/abtollc/sdk/OnInitializeListener$InitializeState;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;->value:I

    .line 24
    return-void
.end method

.method public static valueOf(I)Lorg/abtollc/sdk/OnInitializeListener$InitializeState;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 31
    invoke-static {}, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;->values()[Lorg/abtollc/sdk/OnInitializeListener$InitializeState;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 32
    .local v0, "state":Lorg/abtollc/sdk/OnInitializeListener$InitializeState;
    invoke-virtual {v0}, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 34
    .end local v0    # "state":Lorg/abtollc/sdk/OnInitializeListener$InitializeState;
    :goto_1
    return-object v0

    .line 31
    .restart local v0    # "state":Lorg/abtollc/sdk/OnInitializeListener$InitializeState;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    .end local v0    # "state":Lorg/abtollc/sdk/OnInitializeListener$InitializeState;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/abtollc/sdk/OnInitializeListener$InitializeState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    const-class v0, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;

    return-object v0
.end method

.method public static values()[Lorg/abtollc/sdk/OnInitializeListener$InitializeState;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;->$VALUES:[Lorg/abtollc/sdk/OnInitializeListener$InitializeState;

    invoke-virtual {v0}, [Lorg/abtollc/sdk/OnInitializeListener$InitializeState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/abtollc/sdk/OnInitializeListener$InitializeState;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;->value:I

    return v0
.end method
