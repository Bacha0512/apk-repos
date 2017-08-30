.class final Lcom/tapjoy/internal/fr$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/fr;->a(Landroid/app/Activity;Lcom/tapjoy/internal/fn;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/fn;

.field final synthetic b:Lcom/tapjoy/internal/fr;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/fr;Lcom/tapjoy/internal/fn;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/internal/fr$2;->b:Lcom/tapjoy/internal/fr;

    iput-object p2, p0, Lcom/tapjoy/internal/fr$2;->a:Lcom/tapjoy/internal/fn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/fr$2;->a:Lcom/tapjoy/internal/fn;

    iget-object v1, p0, Lcom/tapjoy/internal/fr$2;->b:Lcom/tapjoy/internal/fr;

    iget-object v1, v1, Lcom/tapjoy/internal/fr;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fn;->d(Ljava/lang/String;)V

    return-void
.end method
