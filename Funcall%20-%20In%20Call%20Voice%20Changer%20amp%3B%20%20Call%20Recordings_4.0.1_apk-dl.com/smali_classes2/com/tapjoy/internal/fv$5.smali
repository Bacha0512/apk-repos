.class final Lcom/tapjoy/internal/fv$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/fv;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tapjoy/internal/fv;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/fv;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/tapjoy/internal/fv$5;->b:Lcom/tapjoy/internal/fv;

    iput-object p2, p0, Lcom/tapjoy/internal/fv$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/tapjoy/internal/fv$5;->b:Lcom/tapjoy/internal/fv;

    invoke-static {v0}, Lcom/tapjoy/internal/fv;->a(Lcom/tapjoy/internal/fv;)Lcom/tapjoy/internal/fj;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/fv$5;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/fj;->d(Ljava/lang/String;)V

    .line 115
    return-void
.end method
