.class Lcom/weirdvoice/ui/prefs/CodecsFragment$4;
.super Ljava/lang/Object;
.source "CodecsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/ui/prefs/CodecsFragment;->userActivateCodec(Ljava/util/Map;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/ui/prefs/CodecsFragment;

.field private final synthetic val$codec:Ljava/util/Map;

.field private final synthetic val$newPrio:S


# direct methods
.method constructor <init>(Lcom/weirdvoice/ui/prefs/CodecsFragment;Ljava/util/Map;S)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/ui/prefs/CodecsFragment$4;->this$0:Lcom/weirdvoice/ui/prefs/CodecsFragment;

    iput-object p2, p0, Lcom/weirdvoice/ui/prefs/CodecsFragment$4;->val$codec:Ljava/util/Map;

    iput-short p3, p0, Lcom/weirdvoice/ui/prefs/CodecsFragment$4;->val$newPrio:S

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 321
    iget-object v0, p0, Lcom/weirdvoice/ui/prefs/CodecsFragment$4;->this$0:Lcom/weirdvoice/ui/prefs/CodecsFragment;

    iget-object v1, p0, Lcom/weirdvoice/ui/prefs/CodecsFragment$4;->val$codec:Ljava/util/Map;

    iget-short v2, p0, Lcom/weirdvoice/ui/prefs/CodecsFragment$4;->val$newPrio:S

    # invokes: Lcom/weirdvoice/ui/prefs/CodecsFragment;->setCodecActivated(Ljava/util/Map;S)V
    invoke-static {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/CodecsFragment;->access$3(Lcom/weirdvoice/ui/prefs/CodecsFragment;Ljava/util/Map;S)V

    .line 322
    return-void
.end method
