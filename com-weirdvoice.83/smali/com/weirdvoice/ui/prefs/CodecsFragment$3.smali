.class Lcom/weirdvoice/ui/prefs/CodecsFragment$3;
.super Ljava/lang/Object;
.source "CodecsFragment.java"

# interfaces
.implements Lcom/weirdvoice/widgets/DragnDropListView$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/ui/prefs/CodecsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/ui/prefs/CodecsFragment;


# direct methods
.method constructor <init>(Lcom/weirdvoice/ui/prefs/CodecsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/ui/prefs/CodecsFragment$3;->this$0:Lcom/weirdvoice/ui/prefs/CodecsFragment;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 6
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 200
    iget-object v3, p0, Lcom/weirdvoice/ui/prefs/CodecsFragment$3;->this$0:Lcom/weirdvoice/ui/prefs/CodecsFragment;

    invoke-virtual {v3}, Lcom/weirdvoice/ui/prefs/CodecsFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 202
    .local v2, "item":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "CodecsFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Dropped "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "codec_name"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v3, "codec_priority"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Short;

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    if-gtz v3, :cond_0

    .line 228
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v3, p0, Lcom/weirdvoice/ui/prefs/CodecsFragment$3;->this$0:Lcom/weirdvoice/ui/prefs/CodecsFragment;

    # getter for: Lcom/weirdvoice/ui/prefs/CodecsFragment;->codecsList:Ljava/util/List;
    invoke-static {v3}, Lcom/weirdvoice/ui/prefs/CodecsFragment;->access$0(Lcom/weirdvoice/ui/prefs/CodecsFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 210
    iget-object v3, p0, Lcom/weirdvoice/ui/prefs/CodecsFragment$3;->this$0:Lcom/weirdvoice/ui/prefs/CodecsFragment;

    # getter for: Lcom/weirdvoice/ui/prefs/CodecsFragment;->codecsList:Ljava/util/List;
    invoke-static {v3}, Lcom/weirdvoice/ui/prefs/CodecsFragment;->access$0(Lcom/weirdvoice/ui/prefs/CodecsFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 213
    const/16 v1, 0x82

    .line 214
    .local v1, "currentPriority":S
    iget-object v3, p0, Lcom/weirdvoice/ui/prefs/CodecsFragment$3;->this$0:Lcom/weirdvoice/ui/prefs/CodecsFragment;

    # getter for: Lcom/weirdvoice/ui/prefs/CodecsFragment;->codecsList:Ljava/util/List;
    invoke-static {v3}, Lcom/weirdvoice/ui/prefs/CodecsFragment;->access$0(Lcom/weirdvoice/ui/prefs/CodecsFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 227
    iget-object v3, p0, Lcom/weirdvoice/ui/prefs/CodecsFragment$3;->this$0:Lcom/weirdvoice/ui/prefs/CodecsFragment;

    # getter for: Lcom/weirdvoice/ui/prefs/CodecsFragment;->mAdapter:Landroid/widget/SimpleAdapter;
    invoke-static {v3}, Lcom/weirdvoice/ui/prefs/CodecsFragment;->access$2(Lcom/weirdvoice/ui/prefs/CodecsFragment;)Landroid/widget/SimpleAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 214
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 215
    .local v0, "codec":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "codec_priority"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Short;

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    if-lez v3, :cond_1

    .line 216
    const-string v3, "codec_priority"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Short;

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    if-eq v1, v3, :cond_3

    .line 217
    iget-object v5, p0, Lcom/weirdvoice/ui/prefs/CodecsFragment$3;->this$0:Lcom/weirdvoice/ui/prefs/CodecsFragment;

    const-string v3, "codec_id"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    # invokes: Lcom/weirdvoice/ui/prefs/CodecsFragment;->setCodecPriority(Ljava/lang/String;S)V
    invoke-static {v5, v3, v1}, Lcom/weirdvoice/ui/prefs/CodecsFragment;->access$1(Lcom/weirdvoice/ui/prefs/CodecsFragment;Ljava/lang/String;S)V

    .line 218
    const-string v3, "codec_priority"

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    :cond_3
    add-int/lit8 v3, v1, -0x1

    int-to-short v1, v3

    goto :goto_1
.end method
