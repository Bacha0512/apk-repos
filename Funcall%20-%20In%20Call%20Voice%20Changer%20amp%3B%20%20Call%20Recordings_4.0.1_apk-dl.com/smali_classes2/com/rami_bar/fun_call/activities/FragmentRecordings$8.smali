.class Lcom/rami_bar/fun_call/activities/FragmentRecordings$8;
.super Ljava/lang/Object;
.source "FragmentRecordings.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/activities/FragmentRecordings;->getRecordings(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback",
        "<",
        "Lcom/rami_bar/fun_call/objects/receive/Recordings;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rami_bar/fun_call/activities/FragmentRecordings;


# direct methods
.method constructor <init>(Lcom/rami_bar/fun_call/activities/FragmentRecordings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rami_bar/fun_call/activities/FragmentRecordings;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings$8;->this$0:Lcom/rami_bar/fun_call/activities/FragmentRecordings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 2
    .param p2, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lcom/rami_bar/fun_call/objects/receive/Recordings;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 376
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/rami_bar/fun_call/objects/receive/Recordings;>;"
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings$8;->this$0:Lcom/rami_bar/fun_call/activities/FragmentRecordings;

    # getter for: Lcom/rami_bar/fun_call/activities/FragmentRecordings;->swipe_refresh:Landroid/support/v4/widget/SwipeRefreshLayout;
    invoke-static {v0}, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->access$800(Lcom/rami_bar/fun_call/activities/FragmentRecordings;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 377
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lcom/rami_bar/fun_call/objects/receive/Recordings;",
            ">;",
            "Lretrofit2/Response",
            "<",
            "Lcom/rami_bar/fun_call/objects/receive/Recordings;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 360
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/rami_bar/fun_call/objects/receive/Recordings;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lcom/rami_bar/fun_call/objects/receive/Recordings;>;"
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings$8;->this$0:Lcom/rami_bar/fun_call/activities/FragmentRecordings;

    # getter for: Lcom/rami_bar/fun_call/activities/FragmentRecordings;->swipe_refresh:Landroid/support/v4/widget/SwipeRefreshLayout;
    invoke-static {v2}, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->access$800(Lcom/rami_bar/fun_call/activities/FragmentRecordings;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 362
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    .line 363
    .local v1, "statusCode":I
    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    .line 371
    :goto_0
    return-void

    .line 367
    :cond_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rami_bar/fun_call/objects/receive/Recordings;

    .line 369
    .local v0, "recordings":Lcom/rami_bar/fun_call/objects/receive/Recordings;
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings$8;->this$0:Lcom/rami_bar/fun_call/activities/FragmentRecordings;

    # setter for: Lcom/rami_bar/fun_call/activities/FragmentRecordings;->mRecordings:Lcom/rami_bar/fun_call/objects/receive/Recordings;
    invoke-static {v2, v0}, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->access$902(Lcom/rami_bar/fun_call/activities/FragmentRecordings;Lcom/rami_bar/fun_call/objects/receive/Recordings;)Lcom/rami_bar/fun_call/objects/receive/Recordings;

    .line 370
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings$8;->this$0:Lcom/rami_bar/fun_call/activities/FragmentRecordings;

    # invokes: Lcom/rami_bar/fun_call/activities/FragmentRecordings;->setRecordingsList(Lcom/rami_bar/fun_call/objects/receive/Recordings;)V
    invoke-static {v2, v0}, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->access$1000(Lcom/rami_bar/fun_call/activities/FragmentRecordings;Lcom/rami_bar/fun_call/objects/receive/Recordings;)V

    goto :goto_0
.end method
