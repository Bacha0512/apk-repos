.class Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment$PluginCallRunnable;
.super Ljava/lang/Thread;
.source "OutgoingCallListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PluginCallRunnable"
.end annotation


# instance fields
.field private delay:J

.field private pendingIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment;


# direct methods
.method public constructor <init>(Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment;Landroid/app/PendingIntent;J)V
    .locals 1
    .param p2, "pi"    # Landroid/app/PendingIntent;
    .param p3, "d"    # J

    .prologue
    .line 150
    iput-object p1, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment$PluginCallRunnable;->this$0:Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 151
    iput-object p2, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment$PluginCallRunnable;->pendingIntent:Landroid/app/PendingIntent;

    .line 152
    iput-wide p3, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment$PluginCallRunnable;->delay:J

    .line 153
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 157
    iget-wide v2, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment$PluginCallRunnable;->delay:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 159
    :try_start_0
    iget-wide v2, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment$PluginCallRunnable;->delay:J

    invoke-static {v2, v3}, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment$PluginCallRunnable;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment$PluginCallRunnable;->this$0:Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment;

    invoke-virtual {v2}, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;

    .line 166
    .local v1, "superActivity":Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;
    :try_start_1
    iget-object v2, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment$PluginCallRunnable;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    .line 170
    :goto_1
    if-eqz v1, :cond_1

    .line 171
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->finishServiceIfNeeded(Z)V

    .line 173
    :cond_1
    return-void

    .line 160
    .end local v1    # "superActivity":Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "OutgoingCallListFragment"

    const-string v3, "Thread that fires outgoing call has been interrupted"

    invoke-static {v2, v3}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 167
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "superActivity":Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;
    :catch_1
    move-exception v0

    .line 168
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v2, "OutgoingCallListFragment"

    const-string v3, "Pending intent cancelled"

    invoke-static {v2, v3, v0}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
