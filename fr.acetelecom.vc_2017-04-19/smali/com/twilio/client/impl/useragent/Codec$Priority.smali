.class public final enum Lcom/twilio/client/impl/useragent/Codec$Priority;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twilio/client/impl/useragent/Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Priority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/twilio/client/impl/useragent/Codec$Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/twilio/client/impl/useragent/Codec$Priority;

.field public static final enum DISABLED:Lcom/twilio/client/impl/useragent/Codec$Priority;

.field public static final enum HIGHEST:Lcom/twilio/client/impl/useragent/Codec$Priority;

.field public static final enum LOWEST:Lcom/twilio/client/impl/useragent/Codec$Priority;

.field public static final enum NEXT_HIGHER:Lcom/twilio/client/impl/useragent/Codec$Priority;

.field public static final enum NORMAL:Lcom/twilio/client/impl/useragent/Codec$Priority;


# instance fields
.field private val:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/twilio/client/impl/useragent/Codec$Priority;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v3, v3}, Lcom/twilio/client/impl/useragent/Codec$Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/twilio/client/impl/useragent/Codec$Priority;->DISABLED:Lcom/twilio/client/impl/useragent/Codec$Priority;

    new-instance v0, Lcom/twilio/client/impl/useragent/Codec$Priority;

    const-string v1, "LOWEST"

    invoke-direct {v0, v1, v4, v4}, Lcom/twilio/client/impl/useragent/Codec$Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/twilio/client/impl/useragent/Codec$Priority;->LOWEST:Lcom/twilio/client/impl/useragent/Codec$Priority;

    new-instance v0, Lcom/twilio/client/impl/useragent/Codec$Priority;

    const-string v1, "NORMAL"

    const/16 v2, 0x80

    invoke-direct {v0, v1, v5, v2}, Lcom/twilio/client/impl/useragent/Codec$Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/twilio/client/impl/useragent/Codec$Priority;->NORMAL:Lcom/twilio/client/impl/useragent/Codec$Priority;

    new-instance v0, Lcom/twilio/client/impl/useragent/Codec$Priority;

    const-string v1, "NEXT_HIGHER"

    const/16 v2, 0xfe

    invoke-direct {v0, v1, v6, v2}, Lcom/twilio/client/impl/useragent/Codec$Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/twilio/client/impl/useragent/Codec$Priority;->NEXT_HIGHER:Lcom/twilio/client/impl/useragent/Codec$Priority;

    new-instance v0, Lcom/twilio/client/impl/useragent/Codec$Priority;

    const-string v1, "HIGHEST"

    const/16 v2, 0xff

    invoke-direct {v0, v1, v7, v2}, Lcom/twilio/client/impl/useragent/Codec$Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/twilio/client/impl/useragent/Codec$Priority;->HIGHEST:Lcom/twilio/client/impl/useragent/Codec$Priority;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/twilio/client/impl/useragent/Codec$Priority;

    sget-object v1, Lcom/twilio/client/impl/useragent/Codec$Priority;->DISABLED:Lcom/twilio/client/impl/useragent/Codec$Priority;

    aput-object v1, v0, v3

    sget-object v1, Lcom/twilio/client/impl/useragent/Codec$Priority;->LOWEST:Lcom/twilio/client/impl/useragent/Codec$Priority;

    aput-object v1, v0, v4

    sget-object v1, Lcom/twilio/client/impl/useragent/Codec$Priority;->NORMAL:Lcom/twilio/client/impl/useragent/Codec$Priority;

    aput-object v1, v0, v5

    sget-object v1, Lcom/twilio/client/impl/useragent/Codec$Priority;->NEXT_HIGHER:Lcom/twilio/client/impl/useragent/Codec$Priority;

    aput-object v1, v0, v6

    sget-object v1, Lcom/twilio/client/impl/useragent/Codec$Priority;->HIGHEST:Lcom/twilio/client/impl/useragent/Codec$Priority;

    aput-object v1, v0, v7

    sput-object v0, Lcom/twilio/client/impl/useragent/Codec$Priority;->$VALUES:[Lcom/twilio/client/impl/useragent/Codec$Priority;

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

    iput p3, p0, Lcom/twilio/client/impl/useragent/Codec$Priority;->val:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/twilio/client/impl/useragent/Codec$Priority;
    .locals 1

    const-class v0, Lcom/twilio/client/impl/useragent/Codec$Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/useragent/Codec$Priority;

    return-object v0
.end method

.method public static values()[Lcom/twilio/client/impl/useragent/Codec$Priority;
    .locals 1

    sget-object v0, Lcom/twilio/client/impl/useragent/Codec$Priority;->$VALUES:[Lcom/twilio/client/impl/useragent/Codec$Priority;

    invoke-virtual {v0}, [Lcom/twilio/client/impl/useragent/Codec$Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twilio/client/impl/useragent/Codec$Priority;

    return-object v0
.end method


# virtual methods
.method public getVal()I
    .locals 1

    iget v0, p0, Lcom/twilio/client/impl/useragent/Codec$Priority;->val:I

    return v0
.end method
