.class Lorg/telegram/ui/PhotoViewer$46;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->switchToEditMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 3073
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$46;->this$0:Lorg/telegram/ui/PhotoViewer;

    iput p2, p0, Lorg/telegram/ui/PhotoViewer$46;->val$mode:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 19
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 3076
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$46;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lorg/telegram/ui/PhotoViewer;->access$11902(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 3077
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$46;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v11}, Lorg/telegram/ui/PhotoViewer;->access$2200(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setVisibility(I)V

    .line 3078
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$46;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v11}, Lorg/telegram/ui/PhotoViewer;->access$11400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lorg/telegram/ui/ActionBar/ActionBar;->setVisibility(I)V

    .line 3079
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$46;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v11}, Lorg/telegram/ui/PhotoViewer;->access$4400(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 3080
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$46;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v11}, Lorg/telegram/ui/PhotoViewer;->access$11500(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;

    move-result-object v11

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3082
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$46;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v11}, Lorg/telegram/ui/PhotoViewer;->access$9500(Lorg/telegram/ui/PhotoViewer;)I

    move-result v11

    if-nez v11, :cond_1

    .line 3083
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$46;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v11}, Lorg/telegram/ui/PhotoViewer;->access$2500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CheckBox;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 3085
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$46;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v11}, Lorg/telegram/ui/PhotoViewer;->access$11600(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3086
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$46;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v11}, Lorg/telegram/ui/PhotoViewer;->access$9400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 3087
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_2

    .line 3088
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$46;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v11}, Lorg/telegram/ui/PhotoViewer;->access$9400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v4

    .line 3089
    .local v4, "bitmapWidth":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$46;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v11}, Lorg/telegram/ui/PhotoViewer;->access$9400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/ImageReceiver;->getBitmapHeight()I

    move-result v3

    .line 3091
    .local v3, "bitmapHeight":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$46;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v11}, Lorg/telegram/ui/PhotoViewer;->access$1500(Lorg/telegram/ui/PhotoViewer;)I

    move-result v11

    int-to-float v11, v11

    int-to-float v12, v4

    div-float v9, v11, v12

    .line 3092
    .local v9, "scaleX":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$46;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v11}, Lorg/telegram/ui/PhotoViewer;->access$1600(Lorg/telegram/ui/PhotoViewer;)I

    move-result v11

    int-to-float v11, v11

    int-to-float v12, v3

    div-float v10, v11, v12

    .line 3093
    .local v10, "scaleY":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$46;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v12, 0x2

    invoke-static {v11, v12}, Lorg/telegram/ui/PhotoViewer;->access$12000(Lorg/telegram/ui/PhotoViewer;I)I

    move-result v11

    int-to-float v11, v11

    int-to-float v12, v4

    div-float v6, v11, v12

    .line 3094
    .local v6, "newScaleX":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$46;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v12, 0x2

    invoke-static {v11, v12}, Lorg/telegram/ui/PhotoViewer;->access$12100(Lorg/telegram/ui/PhotoViewer;I)I

    move-result v11

    int-to-float v11, v11

    int-to-float v12, v3

    div-float v7, v11, v12

    .line 3095
    .local v7, "newScaleY":F
    cmpl-float v11, v9, v10

    if-lez v11, :cond_3

    move v8, v10

    .line 3096
    .local v8, "scale":F
    :goto_0
    cmpl-float v11, v6, v7

    if-lez v11, :cond_4

    move v5, v7

    .line 3098
    .local v5, "newScale":F
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$46;->this$0:Lorg/telegram/ui/PhotoViewer;

    div-float v12, v5, v8

    invoke-static {v11, v12}, Lorg/telegram/ui/PhotoViewer;->access$11102(Lorg/telegram/ui/PhotoViewer;F)F

    .line 3099
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$46;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lorg/telegram/ui/PhotoViewer;->access$11202(Lorg/telegram/ui/PhotoViewer;F)F

    .line 3100
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/PhotoViewer$46;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/high16 v11, 0x42780000    # 62.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    neg-int v13, v11

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x15

    if-lt v11, v14, :cond_5

    sget v11, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    div-int/lit8 v11, v11, 0x2

    :goto_2
    add-int/2addr v11, v13

    int-to-float v11, v11

    invoke-static {v12, v11}, Lorg/telegram/ui/PhotoViewer;->access$11302(Lorg/telegram/ui/PhotoViewer;F)F

    .line 3101
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$46;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v11, v12, v13}, Lorg/telegram/ui/PhotoViewer;->access$12202(Lorg/telegram/ui/PhotoViewer;J)J

    .line 3102
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$46;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lorg/telegram/ui/PhotoViewer;->access$12302(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 3105
    .end local v3    # "bitmapHeight":I
    .end local v4    # "bitmapWidth":I
    .end local v5    # "newScale":F
    .end local v6    # "newScaleX":F
    .end local v7    # "newScaleY":F
    .end local v8    # "scale":F
    .end local v9    # "scaleX":F
    .end local v10    # "scaleY":F
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$46;->this$0:Lorg/telegram/ui/PhotoViewer;

    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {v11, v12}, Lorg/telegram/ui/PhotoViewer;->access$10902(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 3106
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$46;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v11}, Lorg/telegram/ui/PhotoViewer;->access$10900(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v11

    const/4 v12, 0x2

    new-array v12, v12, [Landroid/animation/Animator;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/PhotoViewer$46;->this$0:Lorg/telegram/ui/PhotoViewer;

    const-string/jumbo v15, "animationValue"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_0

    .line 3107
    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/PhotoViewer$46;->this$0:Lorg/telegram/ui/PhotoViewer;

    .line 3108
    invoke-static {v14}, Lorg/telegram/ui/PhotoViewer;->access$10700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoFilterView;

    move-result-object v14

    invoke-virtual {v14}, Lorg/telegram/ui/Components/PhotoFilterView;->getToolsView()Landroid/widget/FrameLayout;

    move-result-object v14

    const-string/jumbo v15, "translationY"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/high16 v18, 0x42fc0000    # 126.0f

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x1

    const/16 v18, 0x0

    aput v18, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    aput-object v14, v12, v13

    .line 3106
    invoke-virtual {v11, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3110
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$46;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v11}, Lorg/telegram/ui/PhotoViewer;->access$10900(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v11

    const-wide/16 v12, 0xc8

    invoke-virtual {v11, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3111
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$46;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v11}, Lorg/telegram/ui/PhotoViewer;->access$10900(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v11

    new-instance v12, Lorg/telegram/ui/PhotoViewer$46$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lorg/telegram/ui/PhotoViewer$46$1;-><init>(Lorg/telegram/ui/PhotoViewer$46;)V

    invoke-virtual {v11, v12}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3130
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$46;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v11}, Lorg/telegram/ui/PhotoViewer;->access$10900(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v11

    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->start()V

    .line 3131
    return-void

    .restart local v3    # "bitmapHeight":I
    .restart local v4    # "bitmapWidth":I
    .restart local v6    # "newScaleX":F
    .restart local v7    # "newScaleY":F
    .restart local v9    # "scaleX":F
    .restart local v10    # "scaleY":F
    :cond_3
    move v8, v9

    .line 3095
    goto/16 :goto_0

    .restart local v8    # "scale":F
    :cond_4
    move v5, v6

    .line 3096
    goto/16 :goto_1

    .line 3100
    .restart local v5    # "newScale":F
    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 3106
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
