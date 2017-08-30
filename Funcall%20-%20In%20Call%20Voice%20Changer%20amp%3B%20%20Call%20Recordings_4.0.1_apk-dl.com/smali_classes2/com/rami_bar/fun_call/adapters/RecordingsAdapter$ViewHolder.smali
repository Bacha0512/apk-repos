.class Lcom/rami_bar/fun_call/adapters/RecordingsAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "RecordingsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rami_bar/fun_call/adapters/RecordingsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field iv_record_status:Landroid/widget/ImageView;

.field riv_record_image:Lcom/rami_bar/fun_call/utiles/CircularImageView;

.field final synthetic this$0:Lcom/rami_bar/fun_call/adapters/RecordingsAdapter;

.field tv_record_date:Landroid/widget/TextView;

.field tv_record_duration:Landroid/widget/TextView;

.field tv_record_main:Landroid/widget/RelativeLayout;

.field tv_record_name:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/rami_bar/fun_call/adapters/RecordingsAdapter;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/rami_bar/fun_call/adapters/RecordingsAdapter$ViewHolder;->this$0:Lcom/rami_bar/fun_call/adapters/RecordingsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rami_bar/fun_call/adapters/RecordingsAdapter;Lcom/rami_bar/fun_call/adapters/RecordingsAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/rami_bar/fun_call/adapters/RecordingsAdapter;
    .param p2, "x1"    # Lcom/rami_bar/fun_call/adapters/RecordingsAdapter$1;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/rami_bar/fun_call/adapters/RecordingsAdapter$ViewHolder;-><init>(Lcom/rami_bar/fun_call/adapters/RecordingsAdapter;)V

    return-void
.end method
