.class final enum Lcom/digits/sdk/android/ci;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/digits/sdk/android/ci;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/digits/sdk/android/ci;

.field public static final enum b:Lcom/digits/sdk/android/ci;

.field private static final synthetic c:[Lcom/digits/sdk/android/ci;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/digits/sdk/android/ci;

    const-string v1, "voicecall"

    invoke-direct {v0, v1, v2}, Lcom/digits/sdk/android/ci;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/digits/sdk/android/ci;->a:Lcom/digits/sdk/android/ci;

    new-instance v0, Lcom/digits/sdk/android/ci;

    const-string v1, "sms"

    invoke-direct {v0, v1, v3}, Lcom/digits/sdk/android/ci;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/digits/sdk/android/ci;->b:Lcom/digits/sdk/android/ci;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/digits/sdk/android/ci;

    sget-object v1, Lcom/digits/sdk/android/ci;->a:Lcom/digits/sdk/android/ci;

    aput-object v1, v0, v2

    sget-object v1, Lcom/digits/sdk/android/ci;->b:Lcom/digits/sdk/android/ci;

    aput-object v1, v0, v3

    sput-object v0, Lcom/digits/sdk/android/ci;->c:[Lcom/digits/sdk/android/ci;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/digits/sdk/android/ci;
    .locals 1

    const-class v0, Lcom/digits/sdk/android/ci;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/digits/sdk/android/ci;

    return-object v0
.end method

.method public static values()[Lcom/digits/sdk/android/ci;
    .locals 1

    sget-object v0, Lcom/digits/sdk/android/ci;->c:[Lcom/digits/sdk/android/ci;

    invoke-virtual {v0}, [Lcom/digits/sdk/android/ci;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/digits/sdk/android/ci;

    return-object v0
.end method
