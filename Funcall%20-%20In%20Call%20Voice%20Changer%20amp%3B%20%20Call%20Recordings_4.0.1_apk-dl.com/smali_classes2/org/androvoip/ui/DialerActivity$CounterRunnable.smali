.class public Lorg/androvoip/ui/DialerActivity$CounterRunnable;
.super Ljava/lang/Object;
.source "DialerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/androvoip/ui/DialerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CounterRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/androvoip/ui/DialerActivity;


# direct methods
.method public constructor <init>(Lorg/androvoip/ui/DialerActivity;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lorg/androvoip/ui/DialerActivity$CounterRunnable;->this$0:Lorg/androvoip/ui/DialerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 143
    iget-object v0, p0, Lorg/androvoip/ui/DialerActivity$CounterRunnable;->this$0:Lorg/androvoip/ui/DialerActivity;

    # getter for: Lorg/androvoip/ui/DialerActivity;->tv_call_timer:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/androvoip/ui/DialerActivity;->access$0(Lorg/androvoip/ui/DialerActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "seconds remaining: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/androvoip/ui/DialerActivity$CounterRunnable;->this$0:Lorg/androvoip/ui/DialerActivity;

    # getter for: Lorg/androvoip/ui/DialerActivity;->counter:I
    invoke-static {v2}, Lorg/androvoip/ui/DialerActivity;->access$1(Lorg/androvoip/ui/DialerActivity;)I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    return-void
.end method
