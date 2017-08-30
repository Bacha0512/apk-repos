.class final Lcom/tapjoy/internal/gj;
.super Lcom/tapjoy/internal/gb;

# interfaces
.implements Lcom/tapjoy/internal/fc;


# static fields
.field public static final a:Lcom/tapjoy/internal/bm;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tapjoy/internal/gj$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/gj$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/gj;->a:Lcom/tapjoy/internal/bm;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/tapjoy/internal/gb;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/gj;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/tapjoy/internal/gj;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/gj;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/gj;->c:Ljava/lang/String;

    return-object v0
.end method
