.class public final enum Lcom/tapjoy/internal/gd$i;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/tapjoy/internal/dp$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "i"
.end annotation


# static fields
.field public static final enum a:Lcom/tapjoy/internal/gd$i;

.field public static final enum b:Lcom/tapjoy/internal/gd$i;

.field public static final enum c:Lcom/tapjoy/internal/gd$i;

.field private static e:Lcom/tapjoy/internal/dp$b;

.field private static final synthetic f:[Lcom/tapjoy/internal/gd$i;


# instance fields
.field final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/tapjoy/internal/gd$i;

    const-string v1, "APP"

    invoke-direct {v0, v1, v2, v2}, Lcom/tapjoy/internal/gd$i;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tapjoy/internal/gd$i;->a:Lcom/tapjoy/internal/gd$i;

    new-instance v0, Lcom/tapjoy/internal/gd$i;

    const-string v1, "CAMPAIGN"

    invoke-direct {v0, v1, v3, v3}, Lcom/tapjoy/internal/gd$i;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tapjoy/internal/gd$i;->b:Lcom/tapjoy/internal/gd$i;

    new-instance v0, Lcom/tapjoy/internal/gd$i;

    const-string v1, "CUSTOM"

    invoke-direct {v0, v1, v4, v4}, Lcom/tapjoy/internal/gd$i;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tapjoy/internal/gd$i;->c:Lcom/tapjoy/internal/gd$i;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tapjoy/internal/gd$i;

    sget-object v1, Lcom/tapjoy/internal/gd$i;->a:Lcom/tapjoy/internal/gd$i;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tapjoy/internal/gd$i;->b:Lcom/tapjoy/internal/gd$i;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tapjoy/internal/gd$i;->c:Lcom/tapjoy/internal/gd$i;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tapjoy/internal/gd$i;->f:[Lcom/tapjoy/internal/gd$i;

    new-instance v0, Lcom/tapjoy/internal/gd$i$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/gd$i$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/gd$i;->e:Lcom/tapjoy/internal/dp$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/tapjoy/internal/gd$i;->d:I

    return-void
.end method

.method public static a(I)Lcom/tapjoy/internal/gd$i;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/tapjoy/internal/gd$i;->a:Lcom/tapjoy/internal/gd$i;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/tapjoy/internal/gd$i;->b:Lcom/tapjoy/internal/gd$i;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/tapjoy/internal/gd$i;->c:Lcom/tapjoy/internal/gd$i;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapjoy/internal/gd$i;
    .locals 1

    const-class v0, Lcom/tapjoy/internal/gd$i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gd$i;

    return-object v0
.end method

.method public static values()[Lcom/tapjoy/internal/gd$i;
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/gd$i;->f:[Lcom/tapjoy/internal/gd$i;

    invoke-virtual {v0}, [Lcom/tapjoy/internal/gd$i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapjoy/internal/gd$i;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/tapjoy/internal/gd$i;->d:I

    return v0
.end method
