.class Lfr/acetelecom/vc/CallActivity$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/acetelecom/vc/CallActivity;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfr/acetelecom/vc/CallActivity;


# direct methods
.method constructor <init>(Lfr/acetelecom/vc/CallActivity;)V
    .locals 0

    iput-object p1, p0, Lfr/acetelecom/vc/CallActivity$6;->a:Lfr/acetelecom/vc/CallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity$6;->a:Lfr/acetelecom/vc/CallActivity;

    invoke-virtual {v0}, Lfr/acetelecom/vc/CallActivity;->finish()V

    return-void
.end method
