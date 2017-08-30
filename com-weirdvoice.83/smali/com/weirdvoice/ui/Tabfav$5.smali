.class Lcom/weirdvoice/ui/Tabfav$5;
.super Ljava/lang/Object;
.source "Tabfav.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/ui/Tabfav;->addLine(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/ui/Tabfav;

.field private final synthetic val$destination:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/weirdvoice/ui/Tabfav;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/ui/Tabfav$5;->this$0:Lcom/weirdvoice/ui/Tabfav;

    iput-object p2, p0, Lcom/weirdvoice/ui/Tabfav$5;->val$destination:Ljava/lang/String;

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/weirdvoice/ui/Tabfav$5;->val$destination:Ljava/lang/String;

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->selectedCountryCode:Ljava/lang/String;

    .line 256
    iget-object v0, p0, Lcom/weirdvoice/ui/Tabfav$5;->this$0:Lcom/weirdvoice/ui/Tabfav;

    invoke-virtual {v0}, Lcom/weirdvoice/ui/Tabfav;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v0

    goto :goto_0
.end method
