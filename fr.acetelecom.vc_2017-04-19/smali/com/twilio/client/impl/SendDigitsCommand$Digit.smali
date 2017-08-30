.class final enum Lcom/twilio/client/impl/SendDigitsCommand$Digit;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twilio/client/impl/SendDigitsCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Digit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/twilio/client/impl/SendDigitsCommand$Digit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/twilio/client/impl/SendDigitsCommand$Digit;

.field public static final enum D0:Lcom/twilio/client/impl/SendDigitsCommand$Digit;

.field public static final enum D1:Lcom/twilio/client/impl/SendDigitsCommand$Digit;

.field public static final enum D2:Lcom/twilio/client/impl/SendDigitsCommand$Digit;

.field public static final enum D3:Lcom/twilio/client/impl/SendDigitsCommand$Digit;

.field public static final enum D4:Lcom/twilio/client/impl/SendDigitsCommand$Digit;

.field public static final enum D5:Lcom/twilio/client/impl/SendDigitsCommand$Digit;

.field public static final enum D6:Lcom/twilio/client/impl/SendDigitsCommand$Digit;

.field public static final enum D7:Lcom/twilio/client/impl/SendDigitsCommand$Digit;

.field public static final enum D8:Lcom/twilio/client/impl/SendDigitsCommand$Digit;

.field public static final enum D9:Lcom/twilio/client/impl/SendDigitsCommand$Digit;

.field public static final enum POUND:Lcom/twilio/client/impl/SendDigitsCommand$Digit;

.field public static final enum STAR:Lcom/twilio/client/impl/SendDigitsCommand$Digit;

.field public static final enum WAIT:Lcom/twilio/client/impl/SendDigitsCommand$Digit;


# instance fields
.field final digitStr:Ljava/lang/String;

.field final toneType:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    const-string v1, "D0"

    const-string v2, "0"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/twilio/client/impl/SendDigitsCommand$Digit;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/twilio/client/impl/SendDigitsCommand$Digit;->D0:Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    new-instance v0, Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    const-string v1, "D1"

    const-string v2, "1"

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/twilio/client/impl/SendDigitsCommand$Digit;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/twilio/client/impl/SendDigitsCommand$Digit;->D1:Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    new-instance v0, Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    const-string v1, "D2"

    const-string v2, "2"

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/twilio/client/impl/SendDigitsCommand$Digit;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/twilio/client/impl/SendDigitsCommand$Digit;->D2:Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    new-instance v0, Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    const-string v1, "D3"

    const-string v2, "3"

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/twilio/client/impl/SendDigitsCommand$Digit;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/twilio/client/impl/SendDigitsCommand$Digit;->D3:Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    new-instance v0, Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    const-string v1, "D4"

    const-string v2, "4"

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/twilio/client/impl/SendDigitsCommand$Digit;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/twilio/client/impl/SendDigitsCommand$Digit;->D4:Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    new-instance v0, Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    const-string v1, "D5"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const-string v4, "5"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twilio/client/impl/SendDigitsCommand$Digit;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/twilio/client/impl/SendDigitsCommand$Digit;->D5:Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    new-instance v0, Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    const-string v1, "D6"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const-string v4, "6"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twilio/client/impl/SendDigitsCommand$Digit;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/twilio/client/impl/SendDigitsCommand$Digit;->D6:Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    new-instance v0, Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    const-string v1, "D7"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const-string v4, "7"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twilio/client/impl/SendDigitsCommand$Digit;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/twilio/client/impl/SendDigitsCommand$Digit;->D7:Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    new-instance v0, Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    const-string v1, "D8"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const-string v4, "8"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twilio/client/impl/SendDigitsCommand$Digit;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/twilio/client/impl/SendDigitsCommand$Digit;->D8:Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    new-instance v0, Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    const-string v1, "D9"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const-string v4, "9"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twilio/client/impl/SendDigitsCommand$Digit;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/twilio/client/impl/SendDigitsCommand$Digit;->D9:Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    new-instance v0, Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    const-string v1, "POUND"

    const/16 v2, 0xa

    const/16 v3, 0xb

    const-string v4, "#"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twilio/client/impl/SendDigitsCommand$Digit;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/twilio/client/impl/SendDigitsCommand$Digit;->POUND:Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    new-instance v0, Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    const-string v1, "STAR"

    const/16 v2, 0xb

    const/16 v3, 0xa

    const-string v4, "*"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twilio/client/impl/SendDigitsCommand$Digit;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/twilio/client/impl/SendDigitsCommand$Digit;->STAR:Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    new-instance v0, Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    const-string v1, "WAIT"

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/twilio/client/impl/SendDigitsCommand$Digit;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/twilio/client/impl/SendDigitsCommand$Digit;->WAIT:Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    sget-object v1, Lcom/twilio/client/impl/SendDigitsCommand$Digit;->D0:Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    aput-object v1, v0, v5

    sget-object v1, Lcom/twilio/client/impl/SendDigitsCommand$Digit;->D1:Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    aput-object v1, v0, v6

    sget-object v1, Lcom/twilio/client/impl/SendDigitsCommand$Digit;->D2:Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    aput-object v1, v0, v7

    sget-object v1, Lcom/twilio/client/impl/SendDigitsCommand$Digit;->D3:Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    aput-object v1, v0, v8

    sget-object v1, Lcom/twilio/client/impl/SendDigitsCommand$Digit;->D4:Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/twilio/client/impl/SendDigitsCommand$Digit;->D5:Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/twilio/client/impl/SendDigitsCommand$Digit;->D6:Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/twilio/client/impl/SendDigitsCommand$Digit;->D7:Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/twilio/client/impl/SendDigitsCommand$Digit;->D8:Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/twilio/client/impl/SendDigitsCommand$Digit;->D9:Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/twilio/client/impl/SendDigitsCommand$Digit;->POUND:Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/twilio/client/impl/SendDigitsCommand$Digit;->STAR:Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/twilio/client/impl/SendDigitsCommand$Digit;->WAIT:Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    aput-object v2, v0, v1

    sput-object v0, Lcom/twilio/client/impl/SendDigitsCommand$Digit;->$VALUES:[Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/twilio/client/impl/SendDigitsCommand$Digit;->toneType:I

    iput-object p4, p0, Lcom/twilio/client/impl/SendDigitsCommand$Digit;->digitStr:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/twilio/client/impl/SendDigitsCommand$Digit;
    .locals 1

    const-class v0, Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    return-object v0
.end method

.method public static values()[Lcom/twilio/client/impl/SendDigitsCommand$Digit;
    .locals 1

    sget-object v0, Lcom/twilio/client/impl/SendDigitsCommand$Digit;->$VALUES:[Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    invoke-virtual {v0}, [Lcom/twilio/client/impl/SendDigitsCommand$Digit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    return-object v0
.end method
