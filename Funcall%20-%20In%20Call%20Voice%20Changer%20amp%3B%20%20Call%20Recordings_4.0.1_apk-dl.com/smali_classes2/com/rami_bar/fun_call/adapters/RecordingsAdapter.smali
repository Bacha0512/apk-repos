.class public Lcom/rami_bar/fun_call/adapters/RecordingsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "RecordingsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rami_bar/fun_call/adapters/RecordingsAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;",
        ">;"
    }
.end annotation


# instance fields
.field private layoutResourceId:I

.field private mContext:Landroid/content/Context;

.field private recordings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p3, "recordings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 30
    iput p2, p0, Lcom/rami_bar/fun_call/adapters/RecordingsAdapter;->layoutResourceId:I

    .line 31
    iput-object p1, p0, Lcom/rami_bar/fun_call/adapters/RecordingsAdapter;->mContext:Landroid/content/Context;

    .line 32
    iput-object p3, p0, Lcom/rami_bar/fun_call/adapters/RecordingsAdapter;->recordings:Ljava/util/ArrayList;

    .line 33
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 38
    if-nez p2, :cond_0

    .line 39
    iget-object v4, p0, Lcom/rami_bar/fun_call/adapters/RecordingsAdapter;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 40
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget v4, p0, Lcom/rami_bar/fun_call/adapters/RecordingsAdapter;->layoutResourceId:I

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 41
    new-instance v0, Lcom/rami_bar/fun_call/adapters/RecordingsAdapter$ViewHolder;

    invoke-direct {v0, p0, v6}, Lcom/rami_bar/fun_call/adapters/RecordingsAdapter$ViewHolder;-><init>(Lcom/rami_bar/fun_call/adapters/RecordingsAdapter;Lcom/rami_bar/fun_call/adapters/RecordingsAdapter$1;)V

    .line 42
    .local v0, "holder":Lcom/rami_bar/fun_call/adapters/RecordingsAdapter$ViewHolder;
    const v4, 0x7f1001f1

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/rami_bar/fun_call/adapters/RecordingsAdapter$ViewHolder;->tv_record_name:Landroid/widget/TextView;

    .line 43
    const v4, 0x7f1001ef

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/rami_bar/fun_call/utiles/CircularImageView;

    iput-object v4, v0, Lcom/rami_bar/fun_call/adapters/RecordingsAdapter$ViewHolder;->riv_record_image:Lcom/rami_bar/fun_call/utiles/CircularImageView;

    .line 44
    const v4, 0x7f1001f0

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v0, Lcom/rami_bar/fun_call/adapters/RecordingsAdapter$ViewHolder;->iv_record_status:Landroid/widget/ImageView;

    .line 45
    const v4, 0x7f1001f2

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/rami_bar/fun_call/adapters/RecordingsAdapter$ViewHolder;->tv_record_duration:Landroid/widget/TextView;

    .line 46
    const v4, 0x7f1001f3

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/rami_bar/fun_call/adapters/RecordingsAdapter$ViewHolder;->tv_record_date:Landroid/widget/TextView;

    .line 47
    const v4, 0x7f1001ee

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, v0, Lcom/rami_bar/fun_call/adapters/RecordingsAdapter$ViewHolder;->tv_record_main:Landroid/widget/RelativeLayout;

    .line 48
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 50
    .end local v0    # "holder":Lcom/rami_bar/fun_call/adapters/RecordingsAdapter$ViewHolder;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rami_bar/fun_call/adapters/RecordingsAdapter$ViewHolder;

    .line 52
    .restart local v0    # "holder":Lcom/rami_bar/fun_call/adapters/RecordingsAdapter$ViewHolder;
    iget-object v4, p0, Lcom/rami_bar/fun_call/adapters/RecordingsAdapter;->recordings:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;

    .line 53
    .local v2, "recording":Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;
    iget-object v4, v0, Lcom/rami_bar/fun_call/adapters/RecordingsAdapter$ViewHolder;->tv_record_date:Landroid/widget/TextView;

    iget-object v5, v2, Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;->start_date:Ljava/lang/String;

    invoke-static {v5}, Lcom/rami_bar/fun_call/utiles/Functions;->convertDateToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v4, v0, Lcom/rami_bar/fun_call/adapters/RecordingsAdapter$ViewHolder;->tv_record_duration:Landroid/widget/TextView;

    iget-object v5, v2, Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;->answered_time:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v4, p0, Lcom/rami_bar/fun_call/adapters/RecordingsAdapter;->mContext:Landroid/content/Context;

    iget-object v5, v2, Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;->dialout_num:Ljava/lang/String;

    iget-object v6, v2, Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;->dialout_num:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x8

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/rami_bar/fun_call/utiles/Functions;->getContactDisplayNameByNumber(Landroid/content/Context;Ljava/lang/String;)Lcom/rami_bar/fun_call/objects/CallingContact;

    move-result-object v3

    .line 57
    .local v3, "user":Lcom/rami_bar/fun_call/objects/CallingContact;
    iget-object v4, v3, Lcom/rami_bar/fun_call/objects/CallingContact;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 58
    iget-object v4, v2, Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;->dialout_num:Ljava/lang/String;

    iput-object v4, v3, Lcom/rami_bar/fun_call/objects/CallingContact;->name:Ljava/lang/String;

    .line 60
    :cond_1
    iget-object v4, v3, Lcom/rami_bar/fun_call/objects/CallingContact;->name:Ljava/lang/String;

    iput-object v4, v2, Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;->dialout_name:Ljava/lang/String;

    .line 61
    iget-object v4, v0, Lcom/rami_bar/fun_call/adapters/RecordingsAdapter$ViewHolder;->tv_record_name:Landroid/widget/TextView;

    iget-object v5, v2, Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;->dialout_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v4, v3, Lcom/rami_bar/fun_call/objects/CallingContact;->image:Landroid/net/Uri;

    if-eqz v4, :cond_3

    .line 63
    iget-object v4, p0, Lcom/rami_bar/fun_call/adapters/RecordingsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    iget-object v5, v3, Lcom/rami_bar/fun_call/objects/CallingContact;->image:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v4

    iget-object v5, v0, Lcom/rami_bar/fun_call/adapters/RecordingsAdapter$ViewHolder;->riv_record_image:Lcom/rami_bar/fun_call/utiles/CircularImageView;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 68
    :goto_0
    const-string v4, "0"

    iget-object v5, v2, Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;->rec_purchased:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 70
    iget-object v4, v0, Lcom/rami_bar/fun_call/adapters/RecordingsAdapter$ViewHolder;->iv_record_status:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 71
    iget-object v4, v0, Lcom/rami_bar/fun_call/adapters/RecordingsAdapter$ViewHolder;->iv_record_status:Landroid/widget/ImageView;

    const v5, 0x7f020160

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    iget-object v4, v0, Lcom/rami_bar/fun_call/adapters/RecordingsAdapter$ViewHolder;->iv_record_status:Landroid/widget/ImageView;

    const v5, 0x7f0200d3

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 83
    :cond_2
    :goto_1
    return-object p2

    .line 65
    :cond_3
    iget-object v4, v0, Lcom/rami_bar/fun_call/adapters/RecordingsAdapter$ViewHolder;->riv_record_image:Lcom/rami_bar/fun_call/utiles/CircularImageView;

    const v5, 0x7f0201d0

    invoke-virtual {v4, v5}, Lcom/rami_bar/fun_call/utiles/CircularImageView;->setImageResource(I)V

    goto :goto_0

    .line 73
    :cond_4
    const-string v4, "1"

    iget-object v5, v2, Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;->rec_purchased:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 75
    iget-object v4, v0, Lcom/rami_bar/fun_call/adapters/RecordingsAdapter$ViewHolder;->iv_record_status:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    iget-object v4, v0, Lcom/rami_bar/fun_call/adapters/RecordingsAdapter$ViewHolder;->iv_record_status:Landroid/widget/ImageView;

    const v5, 0x7f0201d1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 77
    iget-object v4, v0, Lcom/rami_bar/fun_call/adapters/RecordingsAdapter$ViewHolder;->iv_record_status:Landroid/widget/ImageView;

    const v5, 0x7f0200d1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 78
    :cond_5
    const-string v4, "2"

    iget-object v5, v2, Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;->rec_purchased:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 80
    iget-object v4, v0, Lcom/rami_bar/fun_call/adapters/RecordingsAdapter$ViewHolder;->iv_record_status:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
