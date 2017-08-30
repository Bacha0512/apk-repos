.class Lcom/weirdvoice/ui/CallList$1;
.super Ljava/lang/Object;
.source "CallList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/ui/CallList;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/ui/CallList;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/weirdvoice/ui/CallList;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/ui/CallList$1;->this$0:Lcom/weirdvoice/ui/CallList;

    iput p2, p0, Lcom/weirdvoice/ui/CallList$1;->val$position:I

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/weirdvoice/ui/CallList$1;->this$0:Lcom/weirdvoice/ui/CallList;

    # getter for: Lcom/weirdvoice/ui/CallList;->dst:[Ljava/lang/String;
    invoke-static {v0}, Lcom/weirdvoice/ui/CallList;->access$0(Lcom/weirdvoice/ui/CallList;)[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/weirdvoice/ui/CallList$1;->val$position:I

    aget-object v0, v0, v1

    sput-object v0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->selectedCountryCode:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/weirdvoice/ui/CallList$1;->this$0:Lcom/weirdvoice/ui/CallList;

    # getter for: Lcom/weirdvoice/ui/CallList;->context:Landroid/app/Activity;
    invoke-static {v0}, Lcom/weirdvoice/ui/CallList;->access$1(Lcom/weirdvoice/ui/CallList;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 64
    return-void
.end method
