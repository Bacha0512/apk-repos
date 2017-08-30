.class final Lcom/tapjoy/internal/gs;
.super Lcom/tapjoy/internal/gj;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/fk;


# static fields
.field public static final a:Lcom/tapjoy/internal/bm;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/tapjoy/internal/gs$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/gs$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/gs;->a:Lcom/tapjoy/internal/bm;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/tapjoy/internal/gj;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/tapjoy/internal/gs;->b:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/tapjoy/internal/gs;->c:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/tapjoy/internal/gs;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/tapjoy/internal/gs;->c:Ljava/lang/String;

    return-object v0
.end method
