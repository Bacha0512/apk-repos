.class Lorg/androvoip/ui/DialerActivity$1;
.super Ljava/lang/Object;
.source "DialerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/androvoip/ui/DialerActivity;->setStatus(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/androvoip/ui/DialerActivity;

.field private final synthetic val$status:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/androvoip/ui/DialerActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/androvoip/ui/DialerActivity$1;->this$0:Lorg/androvoip/ui/DialerActivity;

    iput-object p2, p0, Lorg/androvoip/ui/DialerActivity$1;->val$status:Ljava/lang/String;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lorg/androvoip/ui/DialerActivity$1;->this$0:Lorg/androvoip/ui/DialerActivity;

    # getter for: Lorg/androvoip/ui/DialerActivity;->tv_status:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/androvoip/ui/DialerActivity;->access$2(Lorg/androvoip/ui/DialerActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lorg/androvoip/ui/DialerActivity$1;->val$status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    return-void
.end method
