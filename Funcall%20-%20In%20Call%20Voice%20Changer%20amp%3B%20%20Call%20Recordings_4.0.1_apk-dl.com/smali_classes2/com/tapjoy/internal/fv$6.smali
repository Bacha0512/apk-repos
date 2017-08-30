.class final Lcom/tapjoy/internal/fv$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/fv;->a(Ljava/lang/String;Lcom/tapjoy/internal/fg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tapjoy/internal/fg;

.field final synthetic c:Lcom/tapjoy/internal/fv;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/fv;Ljava/lang/String;Lcom/tapjoy/internal/fg;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/tapjoy/internal/fv$6;->c:Lcom/tapjoy/internal/fv;

    iput-object p2, p0, Lcom/tapjoy/internal/fv$6;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tapjoy/internal/fv$6;->b:Lcom/tapjoy/internal/fg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/tapjoy/internal/fv$6;->c:Lcom/tapjoy/internal/fv;

    invoke-static {v0}, Lcom/tapjoy/internal/fv;->a(Lcom/tapjoy/internal/fv;)Lcom/tapjoy/internal/fj;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/fv$6;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/tapjoy/internal/fv$6;->b:Lcom/tapjoy/internal/fg;

    invoke-interface {v0, v1, v2}, Lcom/tapjoy/internal/fj;->a(Ljava/lang/String;Lcom/tapjoy/internal/fg;)V

    .line 125
    return-void
.end method
