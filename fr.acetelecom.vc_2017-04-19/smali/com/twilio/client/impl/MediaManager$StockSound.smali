.class public final enum Lcom/twilio/client/impl/MediaManager$StockSound;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twilio/client/impl/MediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StockSound"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/twilio/client/impl/MediaManager$StockSound;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/twilio/client/impl/MediaManager$StockSound;

.field public static final enum DISCONNECT:Lcom/twilio/client/impl/MediaManager$StockSound;

.field public static final enum INCOMING:Lcom/twilio/client/impl/MediaManager$StockSound;

.field public static final enum OUTGOING:Lcom/twilio/client/impl/MediaManager$StockSound;


# instance fields
.field private available:Z

.field private final resName:Ljava/lang/String;

.field private soundId:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/twilio/client/impl/MediaManager$StockSound;

    const-string v1, "DISCONNECT"

    const-string v2, "disconnect"

    invoke-direct {v0, v1, v3, v2}, Lcom/twilio/client/impl/MediaManager$StockSound;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twilio/client/impl/MediaManager$StockSound;->DISCONNECT:Lcom/twilio/client/impl/MediaManager$StockSound;

    new-instance v0, Lcom/twilio/client/impl/MediaManager$StockSound;

    const-string v1, "INCOMING"

    const-string v2, "incoming"

    invoke-direct {v0, v1, v4, v2}, Lcom/twilio/client/impl/MediaManager$StockSound;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twilio/client/impl/MediaManager$StockSound;->INCOMING:Lcom/twilio/client/impl/MediaManager$StockSound;

    new-instance v0, Lcom/twilio/client/impl/MediaManager$StockSound;

    const-string v1, "OUTGOING"

    const-string v2, "outgoing"

    invoke-direct {v0, v1, v5, v2}, Lcom/twilio/client/impl/MediaManager$StockSound;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twilio/client/impl/MediaManager$StockSound;->OUTGOING:Lcom/twilio/client/impl/MediaManager$StockSound;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/twilio/client/impl/MediaManager$StockSound;

    sget-object v1, Lcom/twilio/client/impl/MediaManager$StockSound;->DISCONNECT:Lcom/twilio/client/impl/MediaManager$StockSound;

    aput-object v1, v0, v3

    sget-object v1, Lcom/twilio/client/impl/MediaManager$StockSound;->INCOMING:Lcom/twilio/client/impl/MediaManager$StockSound;

    aput-object v1, v0, v4

    sget-object v1, Lcom/twilio/client/impl/MediaManager$StockSound;->OUTGOING:Lcom/twilio/client/impl/MediaManager$StockSound;

    aput-object v1, v0, v5

    sput-object v0, Lcom/twilio/client/impl/MediaManager$StockSound;->$VALUES:[Lcom/twilio/client/impl/MediaManager$StockSound;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twilio/client/impl/MediaManager$StockSound;->available:Z

    iput-object p3, p0, Lcom/twilio/client/impl/MediaManager$StockSound;->resName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/twilio/client/impl/MediaManager$StockSound;)I
    .locals 1

    iget v0, p0, Lcom/twilio/client/impl/MediaManager$StockSound;->soundId:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/twilio/client/impl/MediaManager$StockSound;
    .locals 1

    const-class v0, Lcom/twilio/client/impl/MediaManager$StockSound;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/MediaManager$StockSound;

    return-object v0
.end method

.method public static values()[Lcom/twilio/client/impl/MediaManager$StockSound;
    .locals 1

    sget-object v0, Lcom/twilio/client/impl/MediaManager$StockSound;->$VALUES:[Lcom/twilio/client/impl/MediaManager$StockSound;

    invoke-virtual {v0}, [Lcom/twilio/client/impl/MediaManager$StockSound;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twilio/client/impl/MediaManager$StockSound;

    return-object v0
.end method


# virtual methods
.method public getResName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/MediaManager$StockSound;->resName:Ljava/lang/String;

    return-object v0
.end method

.method public getSoundId()I
    .locals 1

    iget v0, p0, Lcom/twilio/client/impl/MediaManager$StockSound;->soundId:I

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/twilio/client/impl/MediaManager$StockSound;->available:Z

    return v0
.end method

.method public setAvailable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/twilio/client/impl/MediaManager$StockSound;->available:Z

    return-void
.end method

.method public setSoundId(I)V
    .locals 0

    iput p1, p0, Lcom/twilio/client/impl/MediaManager$StockSound;->soundId:I

    return-void
.end method
