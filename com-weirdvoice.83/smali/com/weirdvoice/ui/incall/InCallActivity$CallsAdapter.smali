.class Lcom/weirdvoice/ui/incall/InCallActivity$CallsAdapter;
.super Landroid/widget/BaseAdapter;
.source "InCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/incall/InCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallsAdapter"
.end annotation


# instance fields
.field private mActiveCalls:Z

.field private seenConnected:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/weirdvoice/ui/incall/InCallActivity;


# direct methods
.method public constructor <init>(Lcom/weirdvoice/ui/incall/InCallActivity;Z)V
    .locals 1
    .param p2, "notOnHold"    # Z

    .prologue
    .line 1403
    iput-object p1, p0, Lcom/weirdvoice/ui/incall/InCallActivity$CallsAdapter;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1401
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/weirdvoice/ui/incall/InCallActivity$CallsAdapter;->seenConnected:Landroid/util/SparseArray;

    .line 1404
    iput-boolean p2, p0, Lcom/weirdvoice/ui/incall/InCallActivity$CallsAdapter;->mActiveCalls:Z

    .line 1405
    return-void
.end method

.method private hasNoMoreActiveCall()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1434
    iget-object v3, p0, Lcom/weirdvoice/ui/incall/InCallActivity$CallsAdapter;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    # getter for: Lcom/weirdvoice/ui/incall/InCallActivity;->callMutex:Ljava/lang/Object;
    invoke-static {v3}, Lcom/weirdvoice/ui/incall/InCallActivity;->access$6(Lcom/weirdvoice/ui/incall/InCallActivity;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1435
    :try_start_0
    iget-object v3, p0, Lcom/weirdvoice/ui/incall/InCallActivity$CallsAdapter;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    # getter for: Lcom/weirdvoice/ui/incall/InCallActivity;->callsInfo:[Lcom/weirdvoice/api/SipCallSession;
    invoke-static {v3}, Lcom/weirdvoice/ui/incall/InCallActivity;->access$12(Lcom/weirdvoice/ui/incall/InCallActivity;)[Lcom/weirdvoice/api/SipCallSession;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1436
    monitor-exit v4

    .line 1447
    :goto_0
    return v1

    .line 1439
    :cond_0
    iget-object v3, p0, Lcom/weirdvoice/ui/incall/InCallActivity$CallsAdapter;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    # getter for: Lcom/weirdvoice/ui/incall/InCallActivity;->callsInfo:[Lcom/weirdvoice/api/SipCallSession;
    invoke-static {v3}, Lcom/weirdvoice/ui/incall/InCallActivity;->access$12(Lcom/weirdvoice/ui/incall/InCallActivity;)[Lcom/weirdvoice/api/SipCallSession;

    move-result-object v5

    array-length v6, v5

    move v3, v2

    :goto_1
    if-lt v3, v6, :cond_1

    .line 1434
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1439
    :cond_1
    :try_start_1
    aget-object v0, v5, v3

    .line 1441
    .local v0, "call":Lcom/weirdvoice/api/SipCallSession;
    invoke-virtual {v0}, Lcom/weirdvoice/api/SipCallSession;->isAfterEnded()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1442
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    goto :goto_0

    .line 1439
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private isValidCallForAdapter(Lcom/weirdvoice/api/SipCallSession;)Z
    .locals 10
    .param p1, "call"    # Lcom/weirdvoice/api/SipCallSession;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1408
    const/4 v2, 0x0

    .line 1409
    .local v2, "holdStateOk":Z
    iget-boolean v3, p0, Lcom/weirdvoice/ui/incall/InCallActivity$CallsAdapter;->mActiveCalls:Z

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/weirdvoice/api/SipCallSession;->isLocalHeld()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1410
    const/4 v2, 0x1

    .line 1412
    :cond_0
    iget-boolean v3, p0, Lcom/weirdvoice/ui/incall/InCallActivity$CallsAdapter;->mActiveCalls:Z

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lcom/weirdvoice/api/SipCallSession;->isLocalHeld()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1413
    const/4 v2, 0x1

    .line 1415
    :cond_1
    if-eqz v2, :cond_4

    .line 1416
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1417
    .local v0, "currentTime":J
    invoke-virtual {p1}, Lcom/weirdvoice/api/SipCallSession;->isAfterEnded()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1419
    invoke-direct {p0}, Lcom/weirdvoice/ui/incall/InCallActivity$CallsAdapter;->hasNoMoreActiveCall()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/weirdvoice/ui/incall/InCallActivity$CallsAdapter;->seenConnected:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/weirdvoice/api/SipCallSession;->getCallId()I

    move-result v6

    const-wide/16 v8, 0x1770

    add-long/2addr v8, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0xbb8

    add-long/2addr v8, v0

    cmp-long v3, v6, v8

    if-gez v3, :cond_2

    move v3, v4

    .line 1430
    .end local v0    # "currentTime":J
    :goto_0
    return v3

    .line 1422
    .restart local v0    # "currentTime":J
    :cond_2
    iget-object v3, p0, Lcom/weirdvoice/ui/incall/InCallActivity$CallsAdapter;->seenConnected:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/weirdvoice/api/SipCallSession;->getCallId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->delete(I)V

    move v3, v5

    .line 1423
    goto :goto_0

    .line 1426
    :cond_3
    iget-object v3, p0, Lcom/weirdvoice/ui/incall/InCallActivity$CallsAdapter;->seenConnected:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/weirdvoice/api/SipCallSession;->getCallId()I

    move-result v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v3, v4

    .line 1427
    goto :goto_0

    .end local v0    # "currentTime":J
    :cond_4
    move v3, v5

    .line 1430
    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1452
    const/4 v1, 0x0

    .line 1453
    .local v1, "count":I
    iget-object v3, p0, Lcom/weirdvoice/ui/incall/InCallActivity$CallsAdapter;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    # getter for: Lcom/weirdvoice/ui/incall/InCallActivity;->callMutex:Ljava/lang/Object;
    invoke-static {v3}, Lcom/weirdvoice/ui/incall/InCallActivity;->access$6(Lcom/weirdvoice/ui/incall/InCallActivity;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1454
    :try_start_0
    iget-object v4, p0, Lcom/weirdvoice/ui/incall/InCallActivity$CallsAdapter;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    # getter for: Lcom/weirdvoice/ui/incall/InCallActivity;->callsInfo:[Lcom/weirdvoice/api/SipCallSession;
    invoke-static {v4}, Lcom/weirdvoice/ui/incall/InCallActivity;->access$12(Lcom/weirdvoice/ui/incall/InCallActivity;)[Lcom/weirdvoice/api/SipCallSession;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1455
    monitor-exit v3

    .line 1464
    :goto_0
    return v2

    .line 1458
    :cond_0
    iget-object v4, p0, Lcom/weirdvoice/ui/incall/InCallActivity$CallsAdapter;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    # getter for: Lcom/weirdvoice/ui/incall/InCallActivity;->callsInfo:[Lcom/weirdvoice/api/SipCallSession;
    invoke-static {v4}, Lcom/weirdvoice/ui/incall/InCallActivity;->access$12(Lcom/weirdvoice/ui/incall/InCallActivity;)[Lcom/weirdvoice/api/SipCallSession;

    move-result-object v4

    array-length v5, v4

    :goto_1
    if-lt v2, v5, :cond_1

    .line 1453
    monitor-exit v3

    move v2, v1

    .line 1464
    goto :goto_0

    .line 1458
    :cond_1
    aget-object v0, v4, v2

    .line 1459
    .local v0, "call":Lcom/weirdvoice/api/SipCallSession;
    invoke-direct {p0, v0}, Lcom/weirdvoice/ui/incall/InCallActivity$CallsAdapter;->isValidCallForAdapter(Lcom/weirdvoice/api/SipCallSession;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1460
    add-int/lit8 v1, v1, 0x1

    .line 1458
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1453
    .end local v0    # "call":Lcom/weirdvoice/api/SipCallSession;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 1469
    iget-object v3, p0, Lcom/weirdvoice/ui/incall/InCallActivity$CallsAdapter;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    # getter for: Lcom/weirdvoice/ui/incall/InCallActivity;->callMutex:Ljava/lang/Object;
    invoke-static {v3}, Lcom/weirdvoice/ui/incall/InCallActivity;->access$6(Lcom/weirdvoice/ui/incall/InCallActivity;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1470
    :try_start_0
    iget-object v3, p0, Lcom/weirdvoice/ui/incall/InCallActivity$CallsAdapter;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    # getter for: Lcom/weirdvoice/ui/incall/InCallActivity;->callsInfo:[Lcom/weirdvoice/api/SipCallSession;
    invoke-static {v3}, Lcom/weirdvoice/ui/incall/InCallActivity;->access$12(Lcom/weirdvoice/ui/incall/InCallActivity;)[Lcom/weirdvoice/api/SipCallSession;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1471
    monitor-exit v4

    move-object v0, v2

    .line 1483
    :goto_0
    return-object v0

    .line 1473
    :cond_0
    const/4 v1, 0x0

    .line 1474
    .local v1, "count":I
    iget-object v3, p0, Lcom/weirdvoice/ui/incall/InCallActivity$CallsAdapter;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    # getter for: Lcom/weirdvoice/ui/incall/InCallActivity;->callsInfo:[Lcom/weirdvoice/api/SipCallSession;
    invoke-static {v3}, Lcom/weirdvoice/ui/incall/InCallActivity;->access$12(Lcom/weirdvoice/ui/incall/InCallActivity;)[Lcom/weirdvoice/api/SipCallSession;

    move-result-object v5

    array-length v6, v5

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v6, :cond_1

    .line 1469
    monitor-exit v4

    move-object v0, v2

    .line 1483
    goto :goto_0

    .line 1474
    :cond_1
    aget-object v0, v5, v3

    .line 1475
    .local v0, "call":Lcom/weirdvoice/api/SipCallSession;
    invoke-direct {p0, v0}, Lcom/weirdvoice/ui/incall/InCallActivity$CallsAdapter;->isValidCallForAdapter(Lcom/weirdvoice/api/SipCallSession;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1476
    if-ne v1, p1, :cond_2

    .line 1477
    monitor-exit v4

    goto :goto_0

    .line 1469
    .end local v0    # "call":Lcom/weirdvoice/api/SipCallSession;
    .end local v1    # "count":I
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1479
    .restart local v0    # "call":Lcom/weirdvoice/api/SipCallSession;
    .restart local v1    # "count":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 1474
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 1488
    invoke-virtual {p0, p1}, Lcom/weirdvoice/ui/incall/InCallActivity$CallsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/weirdvoice/api/SipCallSession;

    .line 1489
    .local v0, "call":Lcom/weirdvoice/api/SipCallSession;
    if-eqz v0, :cond_0

    .line 1490
    invoke-virtual {v0}, Lcom/weirdvoice/api/SipCallSession;->getCallId()I

    move-result v1

    int-to-long v2, v1

    .line 1492
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1497
    if-nez p2, :cond_0

    .line 1498
    new-instance p2, Lcom/weirdvoice/ui/incall/InCallCard;

    .end local p2    # "convertView":Landroid/view/View;
    iget-object v2, p0, Lcom/weirdvoice/ui/incall/InCallActivity$CallsAdapter;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    const/4 v3, 0x0

    invoke-direct {p2, v2, v3}, Lcom/weirdvoice/ui/incall/InCallCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1501
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_0
    instance-of v2, p2, Lcom/weirdvoice/ui/incall/InCallCard;

    if-eqz v2, :cond_1

    move-object v1, p2

    .line 1502
    check-cast v1, Lcom/weirdvoice/ui/incall/InCallCard;

    .line 1503
    .local v1, "vc":Lcom/weirdvoice/ui/incall/InCallCard;
    iget-object v2, p0, Lcom/weirdvoice/ui/incall/InCallActivity$CallsAdapter;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    invoke-virtual {v1, v2}, Lcom/weirdvoice/ui/incall/InCallCard;->setOnTriggerListener(Lcom/weirdvoice/ui/incall/IOnCallActionTrigger;)V

    .line 1507
    invoke-virtual {p0, p1}, Lcom/weirdvoice/ui/incall/InCallActivity$CallsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/weirdvoice/api/SipCallSession;

    .line 1508
    .local v0, "session":Lcom/weirdvoice/api/SipCallSession;
    invoke-virtual {v1, v0}, Lcom/weirdvoice/ui/incall/InCallCard;->setCallState(Lcom/weirdvoice/api/SipCallSession;)V

    .line 1511
    .end local v0    # "session":Lcom/weirdvoice/api/SipCallSession;
    .end local v1    # "vc":Lcom/weirdvoice/ui/incall/InCallCard;
    :cond_1
    return-object p2
.end method
