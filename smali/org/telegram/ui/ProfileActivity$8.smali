.class Lorg/telegram/ui/ProfileActivity$8;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 688
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 30
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v23

    if-nez v23, :cond_1

    .line 1070
    :cond_0
    :goto_0
    return-void

    .line 694
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->access$1400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 695
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 696
    .local v7, "args":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->access$700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v23

    if-eqz v23, :cond_3

    .line 697
    const-string/jumbo v23, "dialog_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/ui/ProfileActivity;->access$1500(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/ui/ProfileActivity;->access$1500(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v24

    :goto_1
    move-object/from16 v0, v23

    move-wide/from16 v1, v24

    invoke-virtual {v7, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 701
    :goto_2
    new-instance v16, Lorg/telegram/ui/MediaActivity;

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Lorg/telegram/ui/MediaActivity;-><init>(Landroid/os/Bundle;)V

    .line 702
    .local v16, "fragment":Lorg/telegram/ui/MediaActivity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/telegram/ui/MediaActivity;->setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 697
    .end local v16    # "fragment":Lorg/telegram/ui/MediaActivity;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/ui/ProfileActivity;->access$700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    goto :goto_1

    .line 699
    :cond_3
    const-string/jumbo v23, "dialog_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v24

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, v23

    move-wide/from16 v1, v24

    invoke-virtual {v7, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_2

    .line 704
    .end local v7    # "args":Landroid/os/Bundle;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->access$1600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    .line 705
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 706
    .restart local v7    # "args":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->access$700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v23

    if-eqz v23, :cond_6

    .line 707
    const-string/jumbo v23, "dialog_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/ui/ProfileActivity;->access$1500(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-eqz v24, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/ui/ProfileActivity;->access$1500(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v24

    :goto_3
    move-object/from16 v0, v23

    move-wide/from16 v1, v24

    invoke-virtual {v7, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 711
    :goto_4
    const-string/jumbo v23, "selected_mode"

    const/16 v24, 0x4

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 712
    new-instance v16, Lorg/telegram/ui/MediaActivity;

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Lorg/telegram/ui/MediaActivity;-><init>(Landroid/os/Bundle;)V

    .line 713
    .restart local v16    # "fragment":Lorg/telegram/ui/MediaActivity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/telegram/ui/MediaActivity;->setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 707
    .end local v16    # "fragment":Lorg/telegram/ui/MediaActivity;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/ui/ProfileActivity;->access$700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    goto :goto_3

    .line 709
    :cond_6
    const-string/jumbo v23, "dialog_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v24

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, v23

    move-wide/from16 v1, v24

    invoke-virtual {v7, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_4

    .line 715
    .end local v7    # "args":Landroid/os/Bundle;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->access$1700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    .line 716
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 717
    .restart local v7    # "args":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->access$700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v23

    if-eqz v23, :cond_9

    .line 718
    const-string/jumbo v23, "dialog_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/ui/ProfileActivity;->access$1500(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-eqz v24, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/ui/ProfileActivity;->access$1500(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v24

    :goto_5
    move-object/from16 v0, v23

    move-wide/from16 v1, v24

    invoke-virtual {v7, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 722
    :goto_6
    const-string/jumbo v23, "selected_mode"

    const/16 v24, 0x3

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 723
    new-instance v16, Lorg/telegram/ui/MediaActivity;

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Lorg/telegram/ui/MediaActivity;-><init>(Landroid/os/Bundle;)V

    .line 724
    .restart local v16    # "fragment":Lorg/telegram/ui/MediaActivity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/telegram/ui/MediaActivity;->setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 718
    .end local v16    # "fragment":Lorg/telegram/ui/MediaActivity;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/ui/ProfileActivity;->access$700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    goto :goto_5

    .line 720
    :cond_9
    const-string/jumbo v23, "dialog_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v24

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, v23

    move-wide/from16 v1, v24

    invoke-virtual {v7, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_6

    .line 726
    .end local v7    # "args":Landroid/os/Bundle;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->access$1800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_d

    .line 727
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 728
    .restart local v7    # "args":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->access$700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v23

    if-eqz v23, :cond_c

    .line 729
    const-string/jumbo v23, "dialog_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/ui/ProfileActivity;->access$1500(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-eqz v24, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/ui/ProfileActivity;->access$1500(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v24

    :goto_7
    move-object/from16 v0, v23

    move-wide/from16 v1, v24

    invoke-virtual {v7, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 733
    :goto_8
    const-string/jumbo v23, "selected_mode"

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 734
    new-instance v16, Lorg/telegram/ui/MediaActivity;

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Lorg/telegram/ui/MediaActivity;-><init>(Landroid/os/Bundle;)V

    .line 735
    .restart local v16    # "fragment":Lorg/telegram/ui/MediaActivity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/telegram/ui/MediaActivity;->setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 729
    .end local v16    # "fragment":Lorg/telegram/ui/MediaActivity;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/ui/ProfileActivity;->access$700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    goto :goto_7

    .line 731
    :cond_c
    const-string/jumbo v23, "dialog_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v24

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, v23

    move-wide/from16 v1, v24

    invoke-virtual {v7, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_8

    .line 737
    .end local v7    # "args":Landroid/os/Bundle;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->access$1900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_e

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    new-instance v24, Lorg/telegram/ui/CommonGroupsActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lorg/telegram/ui/ProfileActivity;->access$700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v25

    invoke-direct/range {v24 .. v25}, Lorg/telegram/ui/CommonGroupsActivity;-><init>(I)V

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/ProfileActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 739
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->access$2000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_f

    .line 740
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 741
    .restart local v7    # "args":Landroid/os/Bundle;
    const-string/jumbo v23, "chat_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/ui/ProfileActivity;->access$1500(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v24

    const/16 v26, 0x20

    shr-long v24, v24, v26

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    new-instance v24, Lorg/telegram/ui/IdenticonActivity;

    move-object/from16 v0, v24

    invoke-direct {v0, v7}, Lorg/telegram/ui/IdenticonActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/ProfileActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 743
    .end local v7    # "args":Landroid/os/Bundle;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->access$2100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_10

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lorg/telegram/ui/ProfileActivity;->access$1200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lorg/telegram/ui/Components/AlertsCreator;->createTTLAlert(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/ProfileActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 745
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_14

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->access$1500(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-eqz v23, :cond_11

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->access$1500(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v12

    .line 756
    .local v12, "did":J
    :goto_9
    const/16 v23, 0x5

    move/from16 v0, v23

    new-array v11, v0, [Ljava/lang/String;

    const/16 v23, 0x0

    const-string/jumbo v24, "NotificationsTurnOn"

    const v25, 0x7f070450

    .line 757
    invoke-static/range {v24 .. v25}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v11, v23

    const/16 v23, 0x1

    const-string/jumbo v24, "MuteFor"

    const v25, 0x7f0703af

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-string/jumbo v28, "Hours"

    const/16 v29, 0x1

    .line 758
    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v24 .. v26}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v11, v23

    const/16 v23, 0x2

    const-string/jumbo v24, "MuteFor"

    const v25, 0x7f0703af

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-string/jumbo v28, "Days"

    const/16 v29, 0x2

    .line 759
    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v24 .. v26}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v11, v23

    const/16 v23, 0x3

    const-string/jumbo v24, "NotificationsCustomize"

    const v25, 0x7f07043c

    .line 760
    invoke-static/range {v24 .. v25}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v11, v23

    const/16 v23, 0x4

    const-string/jumbo v24, "NotificationsTurnOff"

    const v25, 0x7f07044f

    .line 761
    invoke-static/range {v24 .. v25}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v11, v23

    .line 764
    .local v11, "descriptions":[Ljava/lang/String;
    const/16 v23, 0x5

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v17, v0

    fill-array-data v17, :array_0

    .line 772
    .local v17, "icons":[I
    new-instance v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 773
    .local v18, "linearLayout":Landroid/widget/LinearLayout;
    const/16 v23, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 775
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_a
    array-length v0, v11

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v6, v0, :cond_13

    .line 776
    new-instance v20, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 777
    .local v20, "textView":Landroid/widget/TextView;
    const-string/jumbo v23, "dialogTextBlack"

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 778
    const/16 v23, 0x1

    const/high16 v24, 0x41800000    # 16.0f

    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 779
    const/16 v23, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 780
    const/16 v23, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    aget v24, v17, v6

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 782
    .local v14, "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v23, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v24, "dialogIcon"

    invoke-static/range {v24 .. v24}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v24

    sget-object v25, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v23 .. v25}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 783
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v14, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 784
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 785
    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 786
    const/high16 v23, 0x41c00000    # 24.0f

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v23

    const/16 v24, 0x0

    const/high16 v25, 0x41c00000    # 24.0f

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v25

    const/16 v26, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 787
    const/16 v23, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 788
    const/16 v23, 0x13

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 789
    const/high16 v23, 0x41d00000    # 26.0f

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v23

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 790
    aget-object v23, v11, v6

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 791
    const/16 v23, -0x1

    const/16 v24, 0x30

    const/16 v25, 0x33

    invoke-static/range {v23 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 792
    new-instance v23, Lorg/telegram/ui/ProfileActivity$8$1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12, v13}, Lorg/telegram/ui/ProfileActivity$8$1;-><init>(Lorg/telegram/ui/ProfileActivity$8;J)V

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 775
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_a

    .line 750
    .end local v6    # "a":I
    .end local v11    # "descriptions":[Ljava/lang/String;
    .end local v12    # "did":J
    .end local v14    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v17    # "icons":[I
    .end local v18    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v20    # "textView":Landroid/widget/TextView;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->access$700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v23

    if-eqz v23, :cond_12

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->access$700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v23

    move/from16 v0, v23

    int-to-long v12, v0

    .restart local v12    # "did":J
    goto/16 :goto_9

    .line 753
    .end local v12    # "did":J
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v23

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v12, v0

    .restart local v12    # "did":J
    goto/16 :goto_9

    .line 846
    .restart local v6    # "a":I
    .restart local v11    # "descriptions":[Ljava/lang/String;
    .restart local v17    # "icons":[I
    .restart local v18    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_13
    new-instance v8, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v8, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 847
    .local v8, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v23, "Notifications"

    const v24, 0x7f070439

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 848
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/ProfileActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 850
    .end local v6    # "a":I
    .end local v8    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v11    # "descriptions":[Ljava/lang/String;
    .end local v12    # "did":J
    .end local v17    # "icons":[I
    .end local v18    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->access$2400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_15

    .line 851
    new-instance v8, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v8, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 852
    .restart local v8    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v23, "AreYouSureSecretChat"

    const v24, 0x7f070096

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 853
    const-string/jumbo v23, "AppName"

    const v24, 0x7f070078

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 854
    const-string/jumbo v23, "OK"

    const v24, 0x7f070452

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    new-instance v24, Lorg/telegram/ui/ProfileActivity$8$2;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ProfileActivity$8$2;-><init>(Lorg/telegram/ui/ProfileActivity$8;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 861
    const-string/jumbo v23, "Cancel"

    const v24, 0x7f0700f0

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/ProfileActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 863
    .end local v8    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->access$2600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_17

    .line 864
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/ui/ProfileActivity;->access$700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v21

    .line 865
    .local v21, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v21, :cond_0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 869
    :try_start_0
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "@"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 870
    .local v19, "text":Ljava/lang/String;
    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0xb

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_16

    .line 871
    sget-object v23, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v24, "clipboard"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/text/ClipboardManager;

    .line 872
    .local v10, "clipboard":Landroid/text/ClipboardManager;
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 878
    .end local v10    # "clipboard":Landroid/text/ClipboardManager;
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v23

    const-string/jumbo v24, "Copied"

    const v25, 0x7f0701a3

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v19, v26, v27

    invoke-static/range {v24 .. v26}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 879
    .end local v19    # "text":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 880
    .local v15, "e":Ljava/lang/Exception;
    const-string/jumbo v23, "tmessages"

    move-object/from16 v0, v23

    invoke-static {v0, v15}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 874
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v19    # "text":Ljava/lang/String;
    :cond_16
    :try_start_1
    sget-object v23, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v24, "clipboard"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ClipboardManager;

    .line 875
    .local v10, "clipboard":Landroid/content/ClipboardManager;
    const-string/jumbo v23, "label"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v9

    .line 876
    .local v9, "clip":Landroid/content/ClipData;
    invoke-virtual {v10, v9}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_b

    .line 903
    .end local v9    # "clip":Landroid/content/ClipData;
    .end local v10    # "clipboard":Landroid/content/ClipboardManager;
    .end local v19    # "text":Ljava/lang/String;
    .end local v21    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->access$2700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_18

    .line 904
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/ui/ProfileActivity;->access$700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v21

    .line 905
    .restart local v21    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v21, :cond_0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v23

    if-eqz v23, :cond_0

    .line 909
    new-instance v8, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v8, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 910
    .restart local v8    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string/jumbo v25, "Call"

    const v26, 0x7f0700de

    invoke-static/range {v25 .. v26}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    const-string/jumbo v25, "Copy"

    const v26, 0x7f0701a4

    invoke-static/range {v25 .. v26}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    new-instance v24, Lorg/telegram/ui/ProfileActivity$8$3;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ProfileActivity$8$3;-><init>(Lorg/telegram/ui/ProfileActivity$8;Lorg/telegram/tgnet/TLRPC$User;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 938
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/ProfileActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 939
    .end local v8    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v21    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->access$2800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-le v0, v1, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->access$2900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ge v0, v1, :cond_1a

    .line 941
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->access$3000(Lorg/telegram/ui/ProfileActivity;)Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_19

    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->access$3000(Lorg/telegram/ui/ProfileActivity;)Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lorg/telegram/ui/ProfileActivity;->access$2800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v25

    sub-int v25, p2, v25

    add-int/lit8 v25, v25, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    move/from16 v22, v0

    .line 946
    .local v22, "user_id":I
    :goto_c
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    .line 949
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 950
    .restart local v7    # "args":Landroid/os/Bundle;
    const-string/jumbo v23, "user_id"

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 951
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    new-instance v24, Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v0, v24

    invoke-direct {v0, v7}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/ProfileActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 944
    .end local v7    # "args":Landroid/os/Bundle;
    .end local v22    # "user_id":I
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/ui/ProfileActivity;->access$2800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v24

    sub-int v24, p2, v24

    add-int/lit8 v24, v24, -0x1

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    move/from16 v22, v0

    .restart local v22    # "user_id":I
    goto :goto_c

    .line 952
    .end local v22    # "user_id":I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->access$3100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_1b

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->access$3200(Lorg/telegram/ui/ProfileActivity;)V

    goto/16 :goto_0

    .line 954
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->access$3300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_1c

    .line 967
    new-instance v8, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v8, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 968
    .restart local v8    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string/jumbo v25, "BotShare"

    const v26, 0x7f0700d1

    invoke-static/range {v25 .. v26}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    const-string/jumbo v25, "Copy"

    const v26, 0x7f0701a4

    invoke-static/range {v25 .. v26}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    new-instance v24, Lorg/telegram/ui/ProfileActivity$8$4;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ProfileActivity$8$4;-><init>(Lorg/telegram/ui/ProfileActivity$8;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/ProfileActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 1002
    .end local v8    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->access$3400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_1d

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->access$900(Lorg/telegram/ui/ProfileActivity;)V

    goto/16 :goto_0

    .line 1004
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->access$3500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-eq v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->access$3600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-eq v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->access$3700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_22

    .line 1005
    :cond_1e
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1006
    .restart local v7    # "args":Landroid/os/Bundle;
    const-string/jumbo v23, "chat_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v24

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1007
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->access$3600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_20

    .line 1008
    const-string/jumbo v23, "type"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1014
    :cond_1f
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    new-instance v24, Lorg/telegram/ui/ChannelUsersActivity;

    move-object/from16 v0, v24

    invoke-direct {v0, v7}, Lorg/telegram/ui/ChannelUsersActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/ProfileActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 1009
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->access$3700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_21

    .line 1010
    const-string/jumbo v23, "type"

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_d

    .line 1011
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->access$3500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_1f

    .line 1012
    const-string/jumbo v23, "type"

    const/16 v24, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_d

    .line 1015
    .end local v7    # "args":Landroid/os/Bundle;
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->access$3800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_23

    .line 1016
    new-instance v8, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v8, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1017
    .restart local v8    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string/jumbo v25, "Copy"

    const v26, 0x7f0701a4

    invoke-static/range {v25 .. v26}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    new-instance v24, Lorg/telegram/ui/ProfileActivity$8$5;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ProfileActivity$8$5;-><init>(Lorg/telegram/ui/ProfileActivity$8;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1034
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/ProfileActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 1035
    .end local v8    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->access$3900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    .line 1055
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->access$4000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_24

    .line 1056
    new-instance v8, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v8, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1057
    .restart local v8    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v23, "ConvertGroupAlert"

    const v24, 0x7f07019d

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1058
    const-string/jumbo v23, "ConvertGroupAlertWarning"

    const v24, 0x7f07019e

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1059
    const-string/jumbo v23, "OK"

    const v24, 0x7f070452

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    new-instance v24, Lorg/telegram/ui/ProfileActivity$8$6;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ProfileActivity$8$6;-><init>(Lorg/telegram/ui/ProfileActivity$8;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1065
    const-string/jumbo v23, "Cancel"

    const v24, 0x7f0700f0

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/ProfileActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 1068
    .end local v8    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-static {v0, v1}, Lorg/telegram/ui/ProfileActivity;->access$4100(Lorg/telegram/ui/ProfileActivity;I)Z

    goto/16 :goto_0

    .line 764
    nop

    :array_0
    .array-data 4
        0x7f0201f6
        0x7f0201f2
        0x7f0201f3
        0x7f0201f4
        0x7f0201f5
    .end array-data
.end method
