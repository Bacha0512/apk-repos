.class public final Lcom/tapjoy/internal/e;
.super Landroid/app/Dialog;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const v0, 0x103000b

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/e;->a:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/e;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/tapjoy/internal/e;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/internal/e;->a:Z

    invoke-super {p0}, Landroid/app/Dialog;->cancel()V

    return-void
.end method

.method public final show()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/e;->a:Z

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
