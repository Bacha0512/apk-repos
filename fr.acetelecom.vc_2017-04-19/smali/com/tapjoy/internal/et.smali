.class abstract Lcom/tapjoy/internal/et;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/tapjoy/internal/et;

.field private static b:Lcom/tapjoy/internal/et;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tapjoy/internal/eu;

    invoke-direct {v0}, Lcom/tapjoy/internal/eu;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/et;->a:Lcom/tapjoy/internal/et;

    sput-object v0, Lcom/tapjoy/internal/et;->b:Lcom/tapjoy/internal/et;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Lcom/tapjoy/internal/et;
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/et;->b:Lcom/tapjoy/internal/et;

    return-object v0
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)Ljava/lang/Object;
.end method
