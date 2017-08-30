.class public final enum Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twilio/client/impl/InternalConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QualityScore"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;

.field public static final enum FIVE:Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;

.field public static final enum FOUR:Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;

.field public static final enum ONE:Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;

.field public static final enum THREE:Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;

.field public static final enum TWO:Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;


# instance fields
.field private final score:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;

    const-string v1, "ONE"

    invoke-direct {v0, v1, v7, v3}, Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;->ONE:Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;

    new-instance v0, Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;

    const-string v1, "TWO"

    invoke-direct {v0, v1, v3, v4}, Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;->TWO:Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;

    new-instance v0, Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;

    const-string v1, "THREE"

    invoke-direct {v0, v1, v4, v5}, Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;->THREE:Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;

    new-instance v0, Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;

    const-string v1, "FOUR"

    invoke-direct {v0, v1, v5, v6}, Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;->FOUR:Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;

    new-instance v0, Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;

    const-string v1, "FIVE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;->FIVE:Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;

    sget-object v1, Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;->ONE:Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;

    aput-object v1, v0, v7

    sget-object v1, Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;->TWO:Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;

    aput-object v1, v0, v3

    sget-object v1, Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;->THREE:Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;

    aput-object v1, v0, v4

    sget-object v1, Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;->FOUR:Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;

    aput-object v1, v0, v5

    sget-object v1, Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;->FIVE:Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;

    aput-object v1, v0, v6

    sput-object v0, Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;->$VALUES:[Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;->score:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;
    .locals 1

    const-class v0, Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;

    return-object v0
.end method

.method public static values()[Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;
    .locals 1

    sget-object v0, Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;->$VALUES:[Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;

    invoke-virtual {v0}, [Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;->score:I

    return v0
.end method
