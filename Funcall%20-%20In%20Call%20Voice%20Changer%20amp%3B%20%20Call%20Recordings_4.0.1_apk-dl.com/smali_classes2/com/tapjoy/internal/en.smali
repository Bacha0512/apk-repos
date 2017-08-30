.class public final Lcom/tapjoy/internal/en;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/tapjoy/internal/et;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/tapjoy/internal/en$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/en$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/en;->a:Lcom/tapjoy/internal/et;

    return-void
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 29
    sget-object v0, Lcom/tapjoy/internal/en;->a:Lcom/tapjoy/internal/et;

    .line 1034
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/et;->c(Ljava/lang/Object;)Z

    .line 30
    return-void
.end method
