.class Lcom/rami_bar/fun_call/activities/FragmentRecordings$7;
.super Ljava/lang/Object;
.source "FragmentRecordings.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/activities/FragmentRecordings;->setRecordingsList(Lcom/rami_bar/fun_call/objects/receive/Recordings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rami_bar/fun_call/activities/FragmentRecordings;


# direct methods
.method constructor <init>(Lcom/rami_bar/fun_call/activities/FragmentRecordings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rami_bar/fun_call/activities/FragmentRecordings;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings$7;->this$0:Lcom/rami_bar/fun_call/activities/FragmentRecordings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 5
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 315
    add-int v2, p2, p3

    if-lt v2, p4, :cond_1

    const/4 v1, 0x1

    .line 317
    .local v1, "loadMore":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 318
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings$7;->this$0:Lcom/rami_bar/fun_call/activities/FragmentRecordings;

    # getter for: Lcom/rami_bar/fun_call/activities/FragmentRecordings;->reachEnd:Z
    invoke-static {v2}, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->access$600(Lcom/rami_bar/fun_call/activities/FragmentRecordings;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 320
    :try_start_0
    iget-object v3, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings$7;->this$0:Lcom/rami_bar/fun_call/activities/FragmentRecordings;

    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings$7;->this$0:Lcom/rami_bar/fun_call/activities/FragmentRecordings;

    # getter for: Lcom/rami_bar/fun_call/activities/FragmentRecordings;->adapter:Lcom/rami_bar/fun_call/adapters/RecordingsAdapter;
    invoke-static {v2}, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->access$400(Lcom/rami_bar/fun_call/activities/FragmentRecordings;)Lcom/rami_bar/fun_call/adapters/RecordingsAdapter;

    move-result-object v2

    iget-object v4, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings$7;->this$0:Lcom/rami_bar/fun_call/activities/FragmentRecordings;

    # getter for: Lcom/rami_bar/fun_call/activities/FragmentRecordings;->adapter:Lcom/rami_bar/fun_call/adapters/RecordingsAdapter;
    invoke-static {v4}, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->access$400(Lcom/rami_bar/fun_call/activities/FragmentRecordings;)Lcom/rami_bar/fun_call/adapters/RecordingsAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/rami_bar/fun_call/adapters/RecordingsAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Lcom/rami_bar/fun_call/adapters/RecordingsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;

    iget-object v2, v2, Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;->uniqueid:Ljava/lang/String;

    # invokes: Lcom/rami_bar/fun_call/activities/FragmentRecordings;->getRecordings(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->access$700(Lcom/rami_bar/fun_call/activities/FragmentRecordings;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :cond_0
    :goto_1
    return-void

    .line 315
    .end local v1    # "loadMore":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 321
    .restart local v1    # "loadMore":Z
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 312
    return-void
.end method
